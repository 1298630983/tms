package team.jhz.tms.dao;

import team.jhz.tms.po.Guide;
import team.jhz.tms.po.QueryVo;

import java.util.List;

/**
 * Created by Jason on 2017/11/8.
 */
public interface GuideDao {

    //总条数
    public Integer guideCountByQueryVo(QueryVo vo);
    //结果集
    public List<Guide> selectGuideListByQueryVo(QueryVo vo);

    //通过id查询
    public Guide selectGuideById(Integer id);

    //通过id修改
    public void updateGuideById(Guide guide);

    //通过id删除
    public void deleteGuideById(Integer id);

    //通过id增加
    public void addGuideById(Guide guide);
}
