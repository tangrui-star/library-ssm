package com.javapandeng.controller;

import com.javapandeng.base.BaseController;
import com.javapandeng.po.ManageBooks;
import com.javapandeng.po.Reader;
import com.javapandeng.service.ReaderService;
import com.javapandeng.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/reader")
public class ReaderController extends BaseController {

    @Autowired
    private ReaderService readerService;


    /*
   分页查询类目列表
   * */
    @RequestMapping("/findBySql")
    public String findBySql(Model model, Reader reader){
        String sql = "select * from tb_reader where 1=1 ";
        if (!isEmpty(reader.getRdName())){
            sql += " and rdName like '%" + reader.getRdName() + "%' ";
        }
        sql+=" order by rdID desc";

        Pager<Reader> pages = readerService.findBySqlRerturnEntity(sql);
        model.addAttribute("pages",pages);
        model.addAttribute("obj",reader);
        return "reader/reader";
    }


    /*
    添加读者项入口
    * */
    @RequestMapping("/add")
    public String add(Model model){
        String sql = "select * from tb_reader order by rdID";
        List<Reader> readerList = readerService.listBySqlReturnEntity(sql);
        model.addAttribute("types",readerList);
        return "reader/add";
    }

    /*
   执行添加读者
   * */
    @RequestMapping("/exAdd")
    public String exAdd(Reader reader){

        readerService.insert(reader);
        return "redirect:/reader/findBySql";
    }

    /*
    修改读者信息
    * */

    @RequestMapping(value = "/update")
    public String update(Integer rdID,Model model){
        Reader obj = readerService.load(rdID);
        String sql = "select * from tb_reader order by rdID";
        List<Reader> readerList = readerService.listBySqlReturnEntity(sql);
        model.addAttribute("types",readerList);
        model.addAttribute("obj",obj);
        return "reader/update";
    }

    /*
     修改图书页面执行
     * */
    @RequestMapping("/exUpdate")
    public String exUpdate(Reader reader){

        readerService.updateById(reader);
        return "redirect:/reader/findBySql";
    }


    /*
    删除图书
    * */
    @RequestMapping("/delete")
    public String delete(Integer rdID){
        Reader obj = readerService.load(rdID);
        readerService.deleteById(obj);
        return "redirect:/reader/findBySql";
    }



}
