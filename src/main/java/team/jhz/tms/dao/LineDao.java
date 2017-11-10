package team.jhz.tms.dao;

import team.jhz.tms.po.Line;
import team.jhz.tms.po.QueryVo;

import java.util.List;

/**
 * Created by Jason on 2017/11/8.
 */
public interface LineDao {
    //总条数
    public Integer lineCountByQueryVo(QueryVo vo);
    //结果集
    public List<Line> selectLineListByQueryVo(QueryVo vo);

    //通过id查询
    public Line selectLineById(Integer id);

    //通过id修改
    public void updateLineById(Line line);

    //通过id删除
    public void deleteLineById(Integer id);

    //通过id增加
    public void addLineById(Line line);
}
