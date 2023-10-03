package com.itheima.pinda.authority.biz.converter;

import com.itheima.pinda.authority.dto.auth.*;
import com.itheima.pinda.authority.entity.auth.Resource;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;


/**
 * @Author 方唐镜
 * @Create 2023-10-01 11:20
 * @Description
 */

@Mapper(componentModel = "Spring")
public interface ResourseDtoConverter {


    ResourseDtoConverter INSTANCE = Mappers.getMapper(ResourseDtoConverter.class);


    Resource resourceSave2Dto(ResourceSaveDTO dto);
    Resource resourceUpdate2Dto(ResourceUpdateDTO dto);

}
