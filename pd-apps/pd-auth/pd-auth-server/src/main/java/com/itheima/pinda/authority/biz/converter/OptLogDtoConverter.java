package com.itheima.pinda.authority.biz.converter;

import com.itheima.pinda.authority.dto.auth.UserDTO;
import com.itheima.pinda.authority.entity.auth.User;
import com.itheima.pinda.authority.entity.common.OptLog;
import com.itheima.pinda.log.entity.OptLogDTO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

/**
 * @Author 方唐镜
 * @Create 2023-10-01 11:20
 * @Description
 */

@Mapper(componentModel = "Spring")
public interface OptLogDtoConverter {


    OptLogDtoConverter INSTANCE = Mappers.getMapper(OptLogDtoConverter.class);


    OptLog optLog2Dto(OptLogDTO optLogDTO);
}
