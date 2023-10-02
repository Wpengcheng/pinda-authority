package com.itheima.pinda.authority.controller.auth;

import com.itheima.pinda.authority.biz.service.auth.ValidateCodeService;
import com.itheima.pinda.authority.biz.service.auth.impl.AuthManager;
import com.itheima.pinda.authority.dto.auth.LoginDTO;
import com.itheima.pinda.authority.dto.auth.LoginParamDTO;
import com.itheima.pinda.base.R;
import com.itheima.pinda.exception.BizException;
import com.itheima.pinda.log.annotation.SysLog;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


/**
 * @Author 方唐镜
 * @Create 2023-09-30 21:32
 * @Description
 */
@Api(tags = "登录控制器")
@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("/anno")

public class LoginController {


    private final ValidateCodeService validateCodeService;
    private final AuthManager authManager;//认证管理器对象

    @ApiOperation(value = "验证码")
    @GetMapping(value = "captcha",produces = "image/png")
    public void captcha(@RequestParam("key") String key, HttpServletResponse response) throws IOException {
        validateCodeService.create(key,response);
    }



    /**
     * 登录认证
     */
    @ApiOperation(value = "登录", notes = "登录")
    @PostMapping(value = "/login")
    @SysLog("登录日志")
    public R<LoginDTO> login(@Validated @RequestBody LoginParamDTO login) throws BizException {
        log.info("account={}", login.getAccount());
        if (validateCodeService.check(login.getKey(), login.getCode())) {
            return authManager.login(login.getAccount(), login.getPassword());
        }
        return R.success(null);
    }



}
