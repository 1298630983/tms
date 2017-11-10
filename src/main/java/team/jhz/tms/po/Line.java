package team.jhz.tms.po;

import java.io.Serializable;
import java.util.Date;

/**
 * Created by Jason on 2017/11/8.
 */
public class Line implements Serializable{
    private Long line_id;  //线路编号(主键)
    private String line_name;  //线路名称
    private String line_type;  //线路种类
    private String line_des;  //目的地
    private String line_days;  //行程天数
    private String line_number;  //人数
    private Date line_createtime; //创建时间

    public Long getLine_id() {
        return line_id;
    }

    public void setLine_id(Long line_id) {
        this.line_id = line_id;
    }

    public String getLine_name() {
        return line_name;
    }

    public void setLine_name(String line_name) {
        this.line_name = line_name;
    }

    public String getLine_type() {
        return line_type;
    }

    public void setLine_type(String line_type) {
        this.line_type = line_type;
    }

    public String getLine_des() {
        return line_des;
    }

    public void setLine_des(String line_des) {
        this.line_des = line_des;
    }

    public String getLine_days() {
        return line_days;
    }

    public void setLine_days(String line_days) {
        this.line_days = line_days;
    }

    public String getLine_number() {
        return line_number;
    }

    public void setLine_number(String line_number) {
        this.line_number = line_number;
    }

    public Date getLine_createtime() {
        return line_createtime;
    }

    public void setLine_createtime(Date line_createtime) {
        this.line_createtime = line_createtime;
    }
}
