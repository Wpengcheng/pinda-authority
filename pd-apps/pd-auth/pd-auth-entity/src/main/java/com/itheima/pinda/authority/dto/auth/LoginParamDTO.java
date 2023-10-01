package com.itheima.pinda.authority.dto.auth;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.*;
import lombok.experimental.Accessors;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;

/**
 * 登录参数
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@Accessors(chain = true)
@ToString(callSuper = true)
@EqualsAndHashCode(callSuper = false)
@Builder
@ApiModel(value = "LoginParamDTO", description = "登录参数")
public class LoginParamDTO {


    @ApiModelProperty(value = "验证码KEY")
    @NotBlank(message = "验证码KEY不能为空")
    private String key;
    @ApiModelProperty(value = "验证码")
    @NotBlank(message = "验证码不能为空")
    private String code;
    @ApiModelProperty(value = "账号")
    @NotBlank(message = "账号不能为空")
    private String account;
    @ApiModelProperty(value = "密码")
    @NotBlank(message = "密码不能为空")
    private String password;
}
