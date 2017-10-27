package team.jhz.tms.dao;



import team.jhz.tms.po.BaseDict;

import java.util.List;

/**
 * Created by Jason on 2017/10/26.
 */
public interface BaseDictDao {

    //查询
    public List<BaseDict> selectBaseDictListByCode(String code);

}
