package team.jhz.tms.service;


import team.jhz.tms.po.BaseDict;

import java.util.List;

/**
 * Created by Jason on 2017/10/26.
 */
public interface BaseDictService {

    //查询
    public List<BaseDict> selectBaseDictListByCode(String code);

}
