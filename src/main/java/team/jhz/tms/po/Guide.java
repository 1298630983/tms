package team.jhz.tms.po;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by Jason on 2017/11/8.
 */
public class Guide implements Serializable{

    private Long guide_id;  //导游编号(主键)
    private String guide_name;  //导游姓名
    private String guide_level;  //导游等级
    private String guide_language;  //导游语种
    private String guide_phone;  //固定电话
    private String guide_mobile;  //移动电话
    private String guide_address;  //住址
    private Date guide_createtime; //创建时间

    public Long getGuide_id() {
        return guide_id;
    }

    public void setGuide_id(Long guide_id) {
        this.guide_id = guide_id;
    }

    public String getGuide_name() {
        return guide_name;
    }

    public void setGuide_name(String guide_name) {
        this.guide_name = guide_name;
    }

    public String getGuide_level() {
        return guide_level;
    }

    public void setGuide_level(String guide_level) {
        this.guide_level = guide_level;
    }

    public String getGuide_language() {
        return guide_language;
    }

    public void setGuide_language(String guide_language) {
        this.guide_language = guide_language;
    }

    public String getGuide_phone() {
        return guide_phone;
    }

    public void setGuide_phone(String guide_phone) {
        this.guide_phone = guide_phone;
    }

    public String getGuide_mobile() {
        return guide_mobile;
    }

    public void setGuide_mobile(String guide_mobile) {
        this.guide_mobile = guide_mobile;
    }

    public String getGuide_address() {
        return guide_address;
    }

    public void setGuide_address(String guide_address) {
        this.guide_address = guide_address;
    }

    public Date getGuide_createtime() {
        return guide_createtime;
    }

    public void setGuide_createtime(Date guide_createtime) {
        this.guide_createtime = guide_createtime;
    }
}
