package com.itheima.pinda.zuul.api;

import com.itheima.pinda.authority.dto.auth.ResourceQueryDTO;
import com.itheima.pinda.authority.entity.auth.Resource;
import com.itheima.pinda.base.R;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @Author 方唐镜
 * @Create 2023-10-04 11:41
 * @Description 资源API熔断
 */
@Component
public class ResourceApiFallback implements ResourceApi {
	public R<List> list() {
		return null;
	}

	public R<List<Resource>> visible(ResourceQueryDTO resource) {
		return null;
	}
}
