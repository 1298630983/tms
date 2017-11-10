package team.jhz.tms.po;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by Jason on 2017/11/2.
 */
public class User implements Serializable {

    private Long user_id;  //编号(主键)
    private String user_name;  //用户名
    private String user_pwd;  //密码
    private String user_dep;  //用户部门
    private String user_level;  //用户级别
    private String user_doc;  //身份证
    private String user_mobile;  //手机号
    private Date user_createtime; //创建时间

    public Long getUser_id() {
        return user_id;
    }

    public void setUser_id(Long user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_pwd() {
        return user_pwd;
    }

    public void setUser_pwd(String user_pwd) {
        this.user_pwd = user_pwd;
    }

    public String getUser_dep() {
        return user_dep;
    }

    public void setUser_dep(String user_dep) {
        this.user_dep = user_dep;
    }

    public String getUser_level() {
        return user_level;
    }

    public void setUser_level(String user_level) {
        this.user_level = user_level;
    }

    public String getUser_doc() {
        return user_doc;
    }

    public void setUser_doc(String user_doc) {
        this.user_doc = user_doc;
    }

    public String getUser_mobile() {
        return user_mobile;
    }

    public void setUser_mobile(String user_mobile) {
        this.user_mobile = user_mobile;
    }

    public Date getUser_createtime() {
        return user_createtime;
    }

    public void setUser_createtime(Date user_createtime) {
        this.user_createtime = user_createtime;
    }
}
