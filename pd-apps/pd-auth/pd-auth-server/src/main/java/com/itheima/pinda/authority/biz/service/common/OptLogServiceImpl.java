package com.itheima.pinda.authority.biz.service.common;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.itheima.pinda.authority.biz.common.OptLogService;
import com.itheima.pinda.authority.biz.converter.OptLogDtoConverter;
import com.itheima.pinda.authority.biz.dao.common.OptLogMapper;
import com.itheima.pinda.authority.entity.common.OptLog;
import com.itheima.pinda.log.entity.OptLogDTO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Author 方唐镜
 * @Create 2023-10-02 15:31
 * @Description
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class OptLogServiceImpl extends ServiceImpl<OptLogMapper, OptLog> implements OptLogService {


	private final OptLogDtoConverter logDtoConverter;

	@Override
	public boolean save(OptLogDTO entity) {
		return super.save(logDtoConverter.optLog2Dto(entity));
	}
}
