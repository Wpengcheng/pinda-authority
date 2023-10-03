package com.itheima.pinda.authority.biz.converter;

import com.itheima.pinda.authority.dto.auth.MenuSaveDTO;
import com.itheima.pinda.authority.dto.auth.MenuTreeDTO;
import com.itheima.pinda.authority.dto.auth.MenuUpdateDTO;
import com.itheima.pinda.authority.dto.auth.VueRouter;
import com.itheima.pinda.authority.entity.auth.Menu;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

import java.util.List;

/**
 * @Author 方唐镜
 * @Create 2023-10-01 11:20
 * @Description
 */

@Mapper(componentModel = "Spring")
public interface MenuDtoConverter {


    MenuDtoConverter INSTANCE = Mappers.getMapper(MenuDtoConverter.class);


    Menu menuSave2Dto(MenuSaveDTO dto);
    Menu menuUpdate2Dto(MenuUpdateDTO dto);

    //List<MenuTreeDTO> menu2DtoList(List<Menu> dto);
    List<VueRouter> menu2VueRouterList(List<Menu> dto);
}
