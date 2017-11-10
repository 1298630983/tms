package team.jhz.tms.dao;


import team.jhz.tms.po.QueryVo;
import team.jhz.tms.po.User;

import java.util.List;

/**
 * Created by Jason on 2017/11/2.
 */
public interface UserDao {
    //总条数
    public Integer userCountByQueryVo(QueryVo vo);
    //结果集
    public List<User> selectUserListByQueryVo(QueryVo vo);

    //通过id查询
    public User selectUserById(Integer id);

    //通过username查询
    public User selectUserByName(String userName);

    //通过id修改
    public void updateUserById(User user);

    //通过id删除
    public void deleteUserById(Integer id);

    //通过id增加
    public void addUserById(User user);
}
