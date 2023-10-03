package com.itheima.pinda.authority.biz.service.common;

import com.baomidou.mybatisplus.extension.service.IService;
import com.itheima.pinda.authority.entity.common.OptLog;
import com.itheima.pinda.log.entity.OptLogDTO;

/**
 * @Author 方唐镜
 * @Create 2023-10-02 15:30
 * @Description 业务接口 操作日志
 */

public interface OptLogService extends IService<OptLog> {
	/**
	 * 保存日志
	 */
	boolean save(OptLogDTO entity);
}
