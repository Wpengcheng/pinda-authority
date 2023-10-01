package com.itheima.pinda.authority.biz.service.auth;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author 方唐镜
 * @Create 2023-09-30 21:41
 * @Description
 */
public interface ValidateCodeService {

    /**
     * 生成验证码
     */
    void create(String key, HttpServletResponse response) throws IOException;

    /**
     * 校验验证码
     * @param key   前端上送 key
     * @param value 前端上送待校验值
     */
    boolean check(String key, String value);
}
