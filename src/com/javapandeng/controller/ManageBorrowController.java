package com.javapandeng.controller;

import com.javapandeng.base.BaseController;
import com.javapandeng.po.ManageBooks;
import com.javapandeng.po.ManageBorrow;
import com.javapandeng.po.Reader;
import com.javapandeng.service.ManageBorrowService;
import com.javapandeng.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/manageBorrow")
public class ManageBorrowController extends BaseController {

    @Autowired
    private ManageBorrowService manageBorrowService;

    /*
   分页查询类目列表
   * */
    @RequestMapping("/findBySql")
    public String findBySql(Model model, ManageBorrow manageBorrow){
        String sql = "select * from tb_borrow where 1=1 ";
        if (!isEmpty(manageBorrow.getRdID())){
            sql += " and rdID like '%" + manageBorrow.getRdID() + "%' ";

        }
        sql+=" order by BorrowID desc";

        Pager<ManageBorrow> pages = manageBorrowService.findBySqlRerturnEntity(sql);
        model.addAttribute("pages",pages);
        model.addAttribute("obj",manageBorrow);

        return "manageBorrow/manageBorrow";
    }


    /*
      添加借阅记录入口
      * */
    @RequestMapping("/add")
    public String add(Model model){
        String sql = "select * from tb_borrow order by BorrowID";
        List<ManageBorrow> manageBorrowList = manageBorrowService.listBySqlReturnEntity(sql);
        model.addAttribute("types",manageBorrowList);
        return "manageBorrow/add";
    }

    /*
    执行添加图书
    * */
    @RequestMapping("/exAdd")
    public String exAdd(ManageBorrow manageBorrow){

        manageBorrowService.insert(manageBorrow);
        return "redirect:/manageBorrow/findBySql";
    }

        /*
    修改读者信息入口
    * */

    @RequestMapping(value = "/update")
    public String update(Integer borrowID,Model model){
        ManageBorrow obj = manageBorrowService.load(borrowID);
        String sql = "select * from tb_borrow order by borrowID";
        List<ManageBorrow> manageBorrowList = manageBorrowService.listBySqlReturnEntity(sql);
        model.addAttribute("types",manageBorrowList);
        model.addAttribute("obj",obj);
        return "manageBorrow/update";
    }

    /*
     修改图书页面执行
     * */
    @RequestMapping("/exUpdate")
    public String exUpdate(ManageBorrow manageBorrow){

        manageBorrowService.updateById(manageBorrow);
        return "redirect:/manageBorrow/findBySql";
    }


    /*
    删除图书
       ManageBorrow obj = manageBorrowService.load(borrowID);
    * */
    @RequestMapping("/delete")
    public String delete(Integer borrowID){

        manageBorrowService.deleteById(borrowID);

        return "redirect:/manageBorrow/findBySql";
    }




}
