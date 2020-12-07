package com.javapandeng.controller;

import com.javapandeng.base.BaseController;

import com.javapandeng.po.ManageBooks;
import com.javapandeng.service.ManageBooksService;
import com.javapandeng.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/*
图书管理层
* */
@Controller
@RequestMapping("/manageBooks")
public class ManageBooksController extends BaseController {

    @Autowired
    private ManageBooksService manageBooksService;

    /*
    分页查询类目列表
    * */
    @RequestMapping("/findBySql")
    public String findBySql(Model model, ManageBooks manageBooks){
        String sql = "select * from tb_book where 1=1 ";
        if (!isEmpty(manageBooks.getBkName())){
            sql += " and bkName like '%" + manageBooks.getBkName() + "%' ";
        }
        sql+=" order by bkID desc";

        Pager<ManageBooks> pages = manageBooksService.findBySqlRerturnEntity(sql);
        model.addAttribute("pages",pages);
        model.addAttribute("obj",manageBooks);
        return "manageBooks/manageBooks";
    }

//    @RequestMapping("/ufindBySql")
//    public String ufindBySql(Model model, ManageBooks manageBooks){
//        String sql = "select * from tb_book where 1=1 ";
//        if (!isEmpty(manageBooks.getBkName())){
//            sql += " and bkName like '%" + manageBooks.getBkName() + "%' ";
//        }
//        sql+=" order by bkID desc";
//
//        Pager<ManageBooks> pages = manageBooksService.findBySqlRerturnEntity(sql);
//        model.addAttribute("pages",pages);
//        model.addAttribute("obj",manageBooks);
//        return "manageBooks/umanageBooks";
//    }

    /*
    添加图书项入口
    * */
    @RequestMapping("/add")
    public String add(Model model){
        String sql = "select * from tb_book order by bkID";
        List<ManageBooks> manageBooksList = manageBooksService.listBySqlReturnEntity(sql);
        model.addAttribute("types",manageBooksList);
        return "manageBooks/add";
    }

    /*
    执行添加图书
    * */
    @RequestMapping("/exAdd")
    public String exAdd(ManageBooks manageBooks){

        manageBooksService.insert(manageBooks);
        return "redirect:/manageBooks/findBySql";
    }

    /*
    修改图书页面入口
    * */
    @RequestMapping(value = "/update")
    public String update(Integer bkID,Model model){
        ManageBooks obj = manageBooksService.load(bkID);
        String sql = "select * from tb_book order by bkID";
        List<ManageBooks> manageBooksList = manageBooksService.listBySqlReturnEntity(sql);
        model.addAttribute("types",manageBooksList);
        model.addAttribute("obj",obj);
        return "manageBooks/update";
    }

    /*
     修改图书页面执行
     * */
    @RequestMapping("/exUpdate")
    public String exUpdate(ManageBooks manageBooks){

        manageBooksService.updateById(manageBooks);
        return "redirect:/manageBooks/findBySql";
    }

    /*
    删除图书
    * */
    @RequestMapping("/delete")
    public String delete(Integer bkID){
        ManageBooks obj = manageBooksService.load(bkID);
        manageBooksService.deleteById(obj);
        return "redirect:/manageBooks/findBySql";
    }

}
