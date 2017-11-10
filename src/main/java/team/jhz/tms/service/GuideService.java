package team.jhz.tms.service;

import team.jhz.tms.po.Guide;
import team.jhz.tms.po.QueryVo;
import team.jhz.tms.utils.Page;

/**
 * Created by Jason on 2017/11/8.
 */
public interface GuideService {

    /**
     * 根据条件分页查询
     *
     * @param queryVo
     * @return
     */
    Page<Guide> selectPageByQueryVo(QueryVo queryVo);

    //通过id查询
    public Guide selectGuideById(Integer id);

    //通过id修改
    public void updateGuideById(Guide guide);

    //通过id删除
    public void deleteGuideById(Integer id);

    //通过id增加
    public void addGuideById(Guide guide);
}
