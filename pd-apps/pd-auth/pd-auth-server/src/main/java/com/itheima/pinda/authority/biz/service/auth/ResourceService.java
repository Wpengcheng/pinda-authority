package com.itheima.pinda.authority.biz.service.auth;

/**
 * @Author 方唐镜
 * @Create 2023-10-01 10:59
 * @Description
 */

import com.baomidou.mybatisplus.extension.service.IService;
import com.itheima.pinda.authority.dto.auth.ResourceQueryDTO;
import com.itheima.pinda.authority.entity.auth.Resource;

import java.util.List;

/**
 * 业务接口
 */
public interface ResourceService extends IService<Resource> {
    /**
     * 查询 用户拥有的资源权限
     */
    List<Resource> findVisibleResource(ResourceQueryDTO resource);
}
