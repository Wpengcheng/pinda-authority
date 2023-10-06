package com.itheima.pinda.zuul.filter;

import cn.hutool.core.util.StrUtil;
import com.itheima.pinda.base.R;
import com.itheima.pinda.common.adapter.IgnoreTokenConfig;
import com.netflix.zuul.ZuulFilter;
import com.netflix.zuul.context.RequestContext;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;

import javax.servlet.http.HttpServletRequest;

/**
 * @Author 方唐镜
 * @Create 2023-10-05 10:32
 * @Description
 */
@Slf4j
public abstract class BaseFilter extends ZuulFilter {



	@Value("${server.servlet.context-path}")
	protected String zuulPrefix;

	/**
	 * 判断当前请求uri是否需要忽略
	 */
	protected boolean isIgnoreToken() {
		HttpServletRequest request =
			RequestContext.getCurrentContext().getRequest();
		String uri = request.getRequestURI();
		uri = StrUtil.subSuf(uri, zuulPrefix.length());
		uri = StrUtil.subSuf(uri, uri.indexOf("/", 1));
		return IgnoreTokenConfig.isIgnoreToken(uri);
	}

	/**
	 * 网关抛异常
	 * @param errMsg
	 * @param errCode
	 * @param httpStatusCode
	 */
	protected void errorResponse(String errMsg, int errCode, int httpStatusCode) {
		R tokenError = R.fail(errCode, errMsg);
		RequestContext ctx = RequestContext.getCurrentContext();
		// 返回错误码
		ctx.setResponseStatusCode(httpStatusCode);
		ctx.addZuulResponseHeader(
			"Content-Type", "application/json;charset=UTF-8");
		if (ctx.getResponseBody() == null) {
			// 返回错误内容
			ctx.setResponseBody(tokenError.toString());
			// 过滤该请求，不对其进行路由
			ctx.setSendZuulResponse(false);
		}
	}
}
