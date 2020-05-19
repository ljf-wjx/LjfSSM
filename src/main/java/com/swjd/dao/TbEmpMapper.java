package com.swjd.dao;

import com.swjd.bean.TbEmp;
import java.util.List;

public interface TbEmpMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TbEmp record);

    TbEmp selectByPrimaryKey(Integer id);

    List<TbEmp> selectAll();

    int updateByPrimaryKey(TbEmp record);
}