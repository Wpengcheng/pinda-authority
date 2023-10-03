package com.itheima.pinda.authority.biz.converter;

import com.itheima.pinda.authority.dto.auth.*;
import com.itheima.pinda.authority.entity.auth.User;
import com.itheima.pinda.authority.entity.core.Org;
import com.itheima.pinda.user.model.SysOrg;
import com.itheima.pinda.user.model.SysUser;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

/**
 * @Author 方唐镜
 * @Create 2023-10-01 11:20
 * @Description
 */

@Mapper(componentModel = "Spring")
public interface UserDtoConverter {


    UserDtoConverter INSTANCE = Mappers.getMapper(UserDtoConverter.class);


    UserDTO user2Dto(User user);

    User userPage2Dto(UserPageDTO user);

    User userSave2Dto(UserSaveDTO user);

    User userUpdate2Dto(UserUpdateDTO user);

    User userUpdateAvatar2Dto(UserUpdateAvatarDTO user);

    SysUser sysUser2Dto(User user);

    SysOrg sysOrg2Dto(Org org);
}
