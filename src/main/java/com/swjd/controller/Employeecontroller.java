package com.swjd.controller;

import com.swjd.bean.Employee;
import com.swjd.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class Employeecontroller {

    @Autowired
    private EmployeeService employeeService;

    @RequestMapping("selectAll")
    public String selectAll(String name, Model model){
        if (name!=null){
            List<Employee> employees =employeeService.name(name);
            model.addAttribute("employees", employees);
            System.out.println(employees);
        }else {
            List<Employee> employees = employeeService.selectAll();
            model.addAttribute("employees", employees);
            System.out.println(employees);
        }
            return "main";

    }

    //删除
    @RequestMapping("selectByPrimaryKey")
    public String selectByPrimaryKey(Integer id){
        employeeService.deleteByPrimaryKey(id);
        return "redirect:/selectAll";
    }

    // 进入更新页面
    @RequestMapping("update")
    public  String  update(Integer id,Employee tbEmp, Model model){
        Employee tbEmps = employeeService.selectByPrimaryKey(id);
        model.addAttribute("tbEmps",tbEmps);
        System.out.println(tbEmps);
        return "update";
    }

    //更新
    @RequestMapping("updateByPrimaryKey")
    public String updateByPrimaryKey(Employee record){
        employeeService.updateByPrimaryKey(record);
        return "redirect:/selectAll";
    }

    //    来到添加学生页面
    @RequestMapping("insertadd")
    public String insertadd(){

        return "insert";
    }
    @RequestMapping("insert")
    public String insert(Employee record){
        employeeService.insert(record);
        System.out.println(record);
        return "redirect:/selectAll";
    }

}
