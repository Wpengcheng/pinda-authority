package com.itheima.pinda.authority.biz.converter;

import com.itheima.pinda.authority.dto.auth.*;
import com.itheima.pinda.authority.entity.auth.Role;
import com.itheima.pinda.user.model.SysRole;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;


/**
 * @Author 方唐镜
 * @Create 2023-10-01 11:20
 * @Description
 */

@Mapper(componentModel = "Spring")
public interface RoleDtoConverter {


    RoleDtoConverter INSTANCE = Mappers.getMapper(RoleDtoConverter.class);


    RoleQueryDTO roleQuery2Dto(Role dto);
    Role roleSave2Dto(RoleSaveDTO dto);
    Role roleUpdate2Dto(RoleUpdateDTO dto);
    Role rolePage2Dto(RolePageDTO dto);
    List<SysRole> roleList2Dto(List<Role> dto);

}
