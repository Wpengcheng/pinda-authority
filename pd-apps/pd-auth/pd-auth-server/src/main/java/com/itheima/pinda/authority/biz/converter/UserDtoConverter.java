package com.itheima.pinda.authority.biz.converter;

import com.itheima.pinda.authority.dto.auth.UserDTO;
import com.itheima.pinda.authority.entity.auth.User;
import org.mapstruct.Mapper;

/**
 * @Author 方唐镜
 * @Create 2023-10-01 11:20
 * @Description
 */

@Mapper
public interface UserDtoConverter {

    UserDTO user2Dto(User user);
}
