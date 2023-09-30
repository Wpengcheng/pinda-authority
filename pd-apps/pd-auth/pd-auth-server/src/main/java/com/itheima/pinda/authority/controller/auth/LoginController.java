package com.itheima.pinda.authority.controller.auth;

import com.itheima.pinda.authority.biz.service.auth.ValidateCodeService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author 方唐镜
 * @Create 2023-09-30 21:32
 * @Description
 */
@Api(tags = "登录控制器")
@RestController
@RequiredArgsConstructor
@RequestMapping("/anno")
public class LoginController {


    private final ValidateCodeService validateCodeService;

    @ApiOperation(value = "验证码")
    @GetMapping(value = "captcha",produces = "image/png")
    public void captcha(@RequestParam("key") String key, HttpServletResponse response) throws IOException {
        validateCodeService.create(key,response);
    }

}
