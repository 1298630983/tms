package team.jhz.tms.web;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import team.jhz.tms.po.BaseDict;
import team.jhz.tms.po.QueryVo;
import team.jhz.tms.po.User;
import team.jhz.tms.service.BaseDictService;
import team.jhz.tms.service.Impl.UserServiceImpl;
import team.jhz.tms.service.UserService;
import team.jhz.tms.utils.Page;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by Jason on 2017/11/2.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private BaseDictService baseDictService;
    @Autowired
    private UserService userService;

    // 用户部门
    @Value("${USER_DEP_TYPE}")
    private String USER_DEP_TYPE;
    // 用户级别
    @Value("${USER_LEVEL_TYPE}")
    private String USER_LEVEL_TYPE;

    //入口
    @RequestMapping(value = "/list")
    public String list(QueryVo vo, Model model) {
        List<BaseDict> depType = baseDictService.selectBaseDictListByCode(USER_DEP_TYPE);
        List<BaseDict> levelType = baseDictService.selectBaseDictListByCode(USER_LEVEL_TYPE);
        model.addAttribute("depType",depType);
        model.addAttribute("levelType",levelType);

        //通过条件查询分页对象
        Page<User> page = userService.selectPageByQueryVo(vo);
        model.addAttribute("page", page);
        model.addAttribute("userName", vo.getUserName());
        model.addAttribute("userDep", vo.getUserDep());
        model.addAttribute("userLevel", vo.getUserLevel());

        return "user";
    }

    //去修改页面
    @RequestMapping(value = "/edit.action")
    public @ResponseBody
    User edit(Integer id) {
        return userService.selectUserById(id);
    }

    //保存修改
    @RequestMapping(value = "/update.action")
    public @ResponseBody
    String update(User user) {
        userService.updateUserById(user);
        return "OK";
    }

    //去增加页面
    @RequestMapping(value = "/add.action")
    public @ResponseBody
    User add(Integer id) {
        return userService.selectUserById(id);
    }

    //保存修改
    @RequestMapping(value = "/addSave.action")
    public @ResponseBody
    String addSave(User user) {
        userService.addUserById(user);
        return "OK";
    }

    //删除
    @RequestMapping(value = "/delete.action")
    public @ResponseBody
    String delete(Integer id) {
        userService.deleteUserById(id);
        return "OK";
    }

    @RequestMapping(value="/login")
    public String login(@Param("userName") String userName, @Param("userPwd") String userPwd, HttpServletRequest request) {
        User user=userService.login(userName, userPwd);
        if(user!=null){
            HttpSession session=request.getSession();
            session.setAttribute("user",user);
            session.setAttribute("userName",userName);
            return "user";
        } else if (userName == null || userName == "") {
            request.setAttribute("error","用户名不能为空！");
            return "fail";
        } else if (userPwd == null || userPwd == "") {
            request.setAttribute("error","密码不能为空！");
            return "fail";
        }
        request.setAttribute("error", "用户名或密码错误");
        return "fail";
    }
    
}
