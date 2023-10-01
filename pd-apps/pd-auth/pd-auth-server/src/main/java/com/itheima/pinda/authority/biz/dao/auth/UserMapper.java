package com.itheima.pinda.authority.biz.dao.auth;

/**
 * @Author 方唐镜
 * @Create 2023-10-01 10:58
 * @Description
 */

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.itheima.pinda.authority.entity.auth.User;
import org.springframework.stereotype.Repository;

/**
 * Mapper 接口
 */
@Repository
public interface UserMapper extends BaseMapper<User> {
}
