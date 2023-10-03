package com.itheima.pinda.authority.biz.service.core.impl;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itheima.pinda.authority.biz.converter.StationDtoConverter;
import com.itheima.pinda.authority.biz.dao.core.StationMapper;
import com.itheima.pinda.authority.dto.core.StationPageDTO;
import com.itheima.pinda.authority.entity.core.Station;
import com.itheima.pinda.database.mybatis.conditions.Wraps;
import com.itheima.pinda.database.mybatis.conditions.query.LbqWrapper;
import com.itheima.pinda.authority.biz.service.core.StationService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
/**
 * 业务实现类
 * 岗位
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class StationServiceImpl extends ServiceImpl<StationMapper, Station> implements StationService {

    private final StationDtoConverter stationDtoConverter;

    @Override
    public IPage<Station> findStationPage(Page page, StationPageDTO data) {
        Station station = stationDtoConverter.station2Dto(data);
        //Wraps.lbQ(station); 这种写法值 不能和  ${ew.customSqlSegment} 一起使用
        LbqWrapper<Station> wrapper = Wraps.lbQ();

        // ${ew.customSqlSegment} 语法一定要手动eq like 等
        wrapper.like(Station::getName, station.getName())
                .like(Station::getDescribe, station.getDescribe())
                .eq(Station::getOrgId, station.getOrgId())
                .eq(Station::getStatus, station.getStatus())
                .geHeader(Station::getCreateTime, data.getStartCreateTime())
                .leFooter(Station::getCreateTime, data.getEndCreateTime())
        ;
        wrapper.orderByDesc(Station::getId);
        return baseMapper.findStationPage(page, wrapper);
    }
}