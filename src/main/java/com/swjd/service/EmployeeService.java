package com.swjd.service;

import com.swjd.bean.Employee;

import java.util.List;

public interface EmployeeService {
    List<Employee> selectAll();
    List<Employee> name(String name);

    Employee selectByPrimaryKey(Integer id);

    int deleteByPrimaryKey(Integer id);

    int insert(Employee record);

    int updateByPrimaryKey(Employee record);


}
