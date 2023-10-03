package com.itheima.pinda.authority.config;

import com.itheima.pinda.authority.biz.service.common.OptLogService;
import com.itheima.pinda.log.entity.OptLogDTO;
import com.itheima.pinda.log.event.SysLogListener;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableAsync;

import java.util.function.Consumer;

/**
 * @Author 方唐镜
 * @Create 2023-10-02 15:36
 * @Description 日志自动配置
 */
@EnableAsync
@Configuration
public class SysLogConfiguration {
	//日志记录监听器
	@Bean
	public SysLogListener sysLogListener(OptLogService optLogService) {
		Consumer<OptLogDTO> consumer = (optLog) -> optLogService.save(optLog);
		return new SysLogListener(consumer);
	}
}
