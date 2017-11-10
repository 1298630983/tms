package team.jhz.tms.service;

import team.jhz.tms.po.Line;
import team.jhz.tms.po.QueryVo;
import team.jhz.tms.utils.Page;

/**
 * Created by Jason on 2017/11/8.
 */
public interface LineService {
    /**
     * 根据条件分页查询
     *
     * @param queryVo
     * @return
     */
    Page<Line> selectPageByQueryVo(QueryVo queryVo);

    //通过id查询
    public Line selectLineById(Integer id);

    //通过id修改
    public void updateLineById(Line line);

    //通过id删除
    public void deleteLineById(Integer id);

    //通过id增加
    public void addLineById(Line line);
}
