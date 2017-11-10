package team.jhz.tms.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.jhz.tms.dao.GuideDao;
import team.jhz.tms.po.Guide;
import team.jhz.tms.po.QueryVo;
import team.jhz.tms.service.GuideService;
import team.jhz.tms.utils.Page;

/**
 * Created by Jason on 2017/11/8.
 */
@Service
public class GuideServiceImpl implements GuideService {
    
    @Autowired
    private GuideDao guideDao;
    
    @Override
    public Page<Guide> selectPageByQueryVo(QueryVo vo) {
        
        Page<Guide> page = new Page<Guide>();
        //每页数
        page.setSize(5);
        vo.setRows(5);

        if (null != vo) {
            //判断当前页
            if (null != vo.getPage()) {
                page.setPage(vo.getPage());
                vo.setStart((vo.getPage() -1)*vo.getRows());
            }
            if(null != vo.getGuideName() && !"".equals(vo.getGuideName().trim())){
                vo.setGuideName(vo.getGuideName().trim());
            }
            if(null != vo.getGuideLevel() && !"".equals(vo.getGuideLevel().trim())){
                vo.setGuideLevel(vo.getGuideLevel().trim());
            }
            if(null != vo.getGuideLanguage() && !"".equals(vo.getGuideLanguage().trim())){
                vo.setGuideLanguage(vo.getGuideLanguage().trim());
            }
            //总条数
            page.setTotal(guideDao.guideCountByQueryVo(vo));
            page.setRows(guideDao.selectGuideListByQueryVo(vo));
        }
        return page;
    }

    @Override
    public Guide selectGuideById(Integer id) {
        return guideDao.selectGuideById(id);
    }

    @Override
    public void updateGuideById(Guide guide) {
        guideDao.updateGuideById(guide);
    }

    @Override
    public void deleteGuideById(Integer id) {
        guideDao.deleteGuideById(id);
    }

    @Override
    public void addGuideById(Guide guide) {
        guideDao.addGuideById(guide);
    }
}
