package team.jhz.tms.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.jhz.tms.dao.LineDao;
import team.jhz.tms.po.Line;
import team.jhz.tms.po.QueryVo;
import team.jhz.tms.service.LineService;
import team.jhz.tms.utils.Page;

/**
 * Created by Jason on 2017/11/8.
 */
@Service
public class LineServiceImpl implements LineService {
    
    @Autowired
    private LineDao lineDao;
    
    @Override
    public Page<Line> selectPageByQueryVo(QueryVo vo) {
        Page<Line> page = new Page<Line>();
        //每页数
        page.setSize(5);
        vo.setRows(5);

        if (null != vo) {
            //判断当前页
            if (null != vo.getPage()) {
                page.setPage(vo.getPage());
                vo.setStart((vo.getPage() -1)*vo.getRows());
            }
            if(null != vo.getLineName() && !"".equals(vo.getLineName().trim())){
                vo.setLineName(vo.getLineName().trim());
            }
            if(null != vo.getLineType() && !"".equals(vo.getLineType().trim())){
                vo.setLineType(vo.getLineType().trim());
            }
            if(null != vo.getLineDes() && !"".equals(vo.getLineDes().trim())){
                vo.setLineDes(vo.getLineDes().trim());
            }
            //总条数
            page.setTotal(lineDao.lineCountByQueryVo(vo));
            page.setRows(lineDao.selectLineListByQueryVo(vo));
        }
        return page;
    }

    @Override
    public Line selectLineById(Integer id) {
        return lineDao.selectLineById(id);
    }

    @Override
    public void updateLineById(Line line) {
        lineDao.updateLineById(line);
    }

    @Override
    public void deleteLineById(Integer id) {
        lineDao.deleteLineById(id);
    }

    @Override
    public void addLineById(Line line) {
        lineDao.addLineById(line);
    }
}
