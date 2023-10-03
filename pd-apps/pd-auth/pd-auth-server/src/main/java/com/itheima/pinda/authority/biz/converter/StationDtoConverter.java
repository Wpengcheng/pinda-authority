package com.itheima.pinda.authority.biz.converter;

import com.itheima.pinda.authority.dto.core.StationPageDTO;
import com.itheima.pinda.authority.dto.core.StationSaveDTO;
import com.itheima.pinda.authority.dto.core.StationUpdateDTO;
import com.itheima.pinda.authority.entity.core.Station;
import com.itheima.pinda.user.model.SysStation;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

/**
 * @Author 方唐镜
 * @Create 2023-10-01 11:20
 * @Description
 */

@Mapper(componentModel = "Spring")
public interface StationDtoConverter {


    StationDtoConverter INSTANCE = Mappers.getMapper(StationDtoConverter.class);


    Station station2Dto(StationPageDTO optLogDTO);
    Station stationSave2Dto(StationSaveDTO optLogDTO);
    Station stationUpdate2Dto(StationUpdateDTO optLogDTO);
    SysStation sysStation2Dto(Station s);
}
