package team.jhz.tms.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Jason on 2017/11/2.
 */
@Controller
public class LoginController {

    /**
     * 登陆页面
     * @return
     */
    @RequestMapping(value = "/login")
    public String login(){
        return "login";
    }

}
