package com.javapandeng.controller;
import com.javapandeng.base.BaseController;
import com.javapandeng.po.Manage;
import com.javapandeng.po.ManageBooks;
import com.javapandeng.po.ManageBorrow;
import com.javapandeng.po.Reader;
import com.javapandeng.service.ManageBooksService;
import com.javapandeng.service.ManageBorrowService;
import com.javapandeng.service.ManageService;
import com.javapandeng.service.ReaderService;
import com.javapandeng.utils.Consts;
import com.javapandeng.utils.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


/*
 * 登录相关的控制器
 * */

@Controller
@RequestMapping("/login")

public class LoginController extends BaseController {

    @Autowired
    ManageService manageService;
    @Autowired
    private ReaderService readerService;

    @Autowired
    private ManageBooksService manageBooksService;

    @Autowired
    private ManageBorrowService manageBorrowService;

    /*
    * 管理员登录前
    * @return
    * */

    @RequestMapping("login")
    public String login(){
        return "/login/mLogin";
    }

    /*
     * 管理员登录前验证
     * @return
     * */
    @RequestMapping("toLogin")
    public String toLogin(Manage manage, HttpServletRequest request){
        Manage byEntity = manageService.getByEntity(manage);
        if (byEntity == null){
            return "redirect:/login/mtuichu";
        }
        request.getSession().setAttribute(Consts.MANAGE,byEntity);
        return "/login/mIndex";
    }

    /*
    * 管理员退出
    * */
    @RequestMapping("mtuichu")
    public String mtuichu(HttpServletRequest request){
        request.getSession().setAttribute(Consts.MANAGE, null);
        return "/login/mLogin";
    }


    /*
     * 修改密码
     * */
    @RequestMapping("changePwd")
    public String changePwd(HttpServletRequest request){
        Object attribute = request.getSession().getAttribute(Consts.MANAGEID);
        if(attribute==null){
            return "redirect:/login/mIndex";
        }
        Integer id = Integer.valueOf(attribute.toString());
        Manage load = manageService.load(id);
        request.setAttribute("obj",load);
        return "/login/changePwd";
    }

    /**
     * 修改密码入口
     */
/*    @RequestMapping("/pass")
    public String pass(HttpServletRequest request){
        Object attribute = request.getSession().getAttribute(Consts.USERID);
        if(attribute==null){
            return "redirect:/login/uLogin";
        }
        Integer userId = Integer.valueOf(attribute.toString());
        User load = userService.load(userId);
        request.setAttribute("obj",load);
        return "login/pass";
    }*/


@RequestMapping("/uLogin")
public String uLogin(){
    return "login/uLogin";
}


/*
* 用户登录
* */

@RequestMapping("/utoLogin")
public String utoLogin(Model model,Reader reader,HttpServletRequest request){
    Reader byEntity = readerService.getByEntity(reader);
    if (byEntity == null){
        return "redirect:/login/uLogin";
    }
    request.getSession().setAttribute("role",2);
    request.getSession().setAttribute("rdName", byEntity.getRdName());
    request.getSession().setAttribute("rdID", byEntity.getRdID());
    model.addAttribute("obj",reader);

    return "login/uIndex1";

}


    /*
    * 前端首页
    * */
    @RequestMapping("/uIndex")
    public String uIndex(HttpServletRequest request){
        return "login/uIndex";
    }




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
        return "manageBooks/umanageBooks";
    }


    /*
    借书
    * */
    @RequestMapping(value = "/borrow")
    public String borrow(ManageBorrow manageBorrow){

        String sql = "insert into tb_borrow (rdID,bkID,ldDateOut,ldDateRetPlan,lsHasReturn)";
        sql += "values ('"+ manageBorrow.getRdID() +"',' "+ manageBorrow.getBkID() +" ',now(),date_add(now(),interval 2 month),0)";

        manageBorrowService.borrowInsert(sql);

        String sql1 = "update tb_reader set rdBorrowQty = rdBorrowQty +1 where rdID = '"+ manageBorrow.getRdID() +"' ";

        manageBorrowService.borrowInsert(sql1);

        return "redirect:/login/findBySql";
    }


    /*
    * 个人信息入口
    * */

    /*
 分页查询类目列表
 * */
    @RequestMapping("/userFindBySql")
    public String userFindBySql(Model model, Reader reader,ManageBorrow manageBorrow){

        /*
        * 读者个人信息栏
        * */
        String sql = "select * from tb_reader where 1=1 ";

        sql += " and rdID like '" + reader.getRdID() + "' ";

        sql+=" order by rdID desc";

        Pager<Reader> pages = readerService.findBySqlRerturnEntity(sql);
        model.addAttribute("pages",pages);
        model.addAttribute("obj",reader);


        /*
        * 读者借阅信息栏
        *
        * */

        System.out.println(reader.getRdID());
        String sql1 = "select * from tb_borrow where 1=1 ";
        sql1 += " and rdID like '" + reader.getRdID() + "' ";
        sql1+=" order by BorrowID desc";

        Pager<ManageBorrow> pages1 = manageBorrowService.findBySqlRerturnEntity(sql1);
        model.addAttribute("pages1",pages1);
        model.addAttribute("obj1",manageBorrow);
        return "login/reader";
    }


    /*
    * returnBook
    * 还书
    * */
    @RequestMapping("/returnBook")
    public String returnBook(ManageBorrow manageBorrow){

        String sql = "update tb_borrow set lsHasReturn=1, ldDateRetAct=now() where borrowID = '" + manageBorrow.getBorrowID() + "'  ";



        String sql1 = "update tb_reader set rdBorrowQty = rdBorrowQty -1 where rdID = ' "+ manageBorrow.getRdID() +"' ";


        manageBorrowService.updateBysql(sql);

        manageBorrowService.updateBysql(sql1);

        return "redirect:/login/userFindBySql";
    }


    /*
    * 个人信息修改入口
    *
    * */

    @RequestMapping("/update")
    public String update(Integer rdID,Model model){

        Reader obj = readerService.load(rdID);
//        String sql = "select * from tb_reader where rdID = '"+ rdID +"' order by rdID";
//        List<Reader> readerList = readerService.listBySqlReturnEntity(sql);
//        model.addAttribute("types",readerList);
        model.addAttribute("obj",obj);
        return "login/update";
    }

    /*
    * 修改个人信息执行
    * */
    @RequestMapping("/exUpdate")
    public String exUpdate(Reader reader){

        readerService.updateById(reader);
        return "redirect:/login/userFindBySql";
    }
}
