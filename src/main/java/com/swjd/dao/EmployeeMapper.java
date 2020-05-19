package com.swjd.dao;

import com.swjd.bean.Employee;
import java.util.List;

public interface EmployeeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Employee record);

    Employee selectByPrimaryKey(Integer id);

    List<Employee> selectAll();

    List<Employee> name(String name);

    int updateByPrimaryKey(Employee record);
}