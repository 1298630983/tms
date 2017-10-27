package team.jhz.tms.service.Impl;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.jhz.tms.dao.BaseDictDao;
import team.jhz.tms.po.BaseDict;
import team.jhz.tms.service.BaseDictService;

import java.util.List;

/**
 * Created by Jason on 2017/10/26.
 */
@Service
public class BaseDictServiceImpl implements BaseDictService {

    @Autowired
    private BaseDictDao baseDictDao;


    @Override
    public List<BaseDict> selectBaseDictListByCode(String code) {
        return baseDictDao.selectBaseDictListByCode(code);
    }
}
