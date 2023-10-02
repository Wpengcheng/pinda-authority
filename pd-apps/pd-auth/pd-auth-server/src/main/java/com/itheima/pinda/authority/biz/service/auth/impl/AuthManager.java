package com.itheima.pinda.authority.biz.service.auth.impl;

import cn.hutool.core.collection.CollectionUtil;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.itheima.pinda.auth.server.utils.JwtTokenServerUtils;
import com.itheima.pinda.auth.utils.JwtUserInfo;
import com.itheima.pinda.auth.utils.Token;
import com.itheima.pinda.authority.biz.converter.UserDtoConverter;
import com.itheima.pinda.authority.biz.service.auth.ResourceService;
import com.itheima.pinda.authority.dto.auth.LoginDTO;
import com.itheima.pinda.authority.dto.auth.ResourceQueryDTO;
import com.itheima.pinda.authority.entity.auth.Resource;
import com.itheima.pinda.authority.entity.auth.User;
import com.itheima.pinda.base.R;
import com.itheima.pinda.exception.code.ExceptionCode;
import com.itheima.pinda.authority.biz.service.auth.UserService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Objects;
import java.util.stream.Collectors;


/**
 * @Author 方唐镜
 * @Create 2023-10-01 10:53
 * @Description
 */

/**
 *认证管理器
 */
@Service
@Slf4j
@RequiredArgsConstructor
public class AuthManager {

    
    private final JwtTokenServerUtils jwtTokenServerUtils;
    private final UserService userService;
    private final ResourceService resourceService;
    private final UserDtoConverter userDtoConverter;


    /**
     * 账号登录
     * @param account
     * @param password
     */
    public R<LoginDTO> login(String account, String password) {
        // 登录验证
        R<User> result = checkUser(account, password);
        if (result.getIsError()) {
            return R.fail(result.getCode(), result.getMsg());
        }
        User user = result.getData();

        // 生成jwt token
        Token token = generateUserToken(user);

        List<Resource> resourceList =resourceService.findVisibleResource(ResourceQueryDTO.builder().userId(user.getId()).build());
        List<String> permissionsList = null;
        if(CollectionUtil.isNotEmpty(resourceList)){
            permissionsList = resourceList.stream().map(Resource::getCode).collect(Collectors.toList());
        }
        //封装数据
        LoginDTO loginDTO = LoginDTO.builder()
                .user(userDtoConverter.user2Dto(user))
                .token(token)
                .permissionsList(permissionsList)
                .build();
        return R.success(loginDTO);
    }

    //生成jwt token
    private Token generateUserToken(User user) {
        JwtUserInfo userInfo = new JwtUserInfo(user.getId(),
                user.getAccount(),
                user.getName(),
                user.getOrgId(),
                user.getStationId());

        Token token = jwtTokenServerUtils.generateUserToken(userInfo, null);
        log.info("token={}", token.getToken());
        return token;
    }

    // 登录验证
    private R<User> checkUser(String account, String password) {
        User user = userService.getOne(Wrappers.<User>lambdaQuery()
                .eq(User::getAccount, account));

        // 密码加密
        String passwordMd5 = DigestUtils.md5Hex(password);

        if (Objects.isNull(user) || !user.getPassword().equals(passwordMd5)) {
            return R.fail(ExceptionCode.JWT_USER_INVALID);
        }

        return R.success(user);
    }


}
