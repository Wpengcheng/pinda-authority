package com.itheima.pinda.authority.biz.converter;


import com.itheima.pinda.authority.dto.core.OrgSaveDTO;
import com.itheima.pinda.authority.dto.core.OrgTreeDTO;
import com.itheima.pinda.authority.dto.core.OrgUpdateDTO;
import com.itheima.pinda.authority.entity.core.Org;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;


/**
 * @Author 方唐镜
 * @Create 2023-10-01 11:20
 * @Description
 */

@Mapper(componentModel = "Spring")
public interface OrgDtoConverter {


    OrgDtoConverter INSTANCE = Mappers.getMapper(OrgDtoConverter.class);


    Org orgSave2Dto(OrgSaveDTO dto);
    Org orgUpdate2Dto(OrgUpdateDTO dto);
    //List<OrgTreeDTO> orgList2Dto(List<Org> dto);


}
