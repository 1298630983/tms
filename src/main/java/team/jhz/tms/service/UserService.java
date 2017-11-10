package team.jhz.tms.service;

import team.jhz.tms.po.QueryVo;
import team.jhz.tms.po.User;
import team.jhz.tms.utils.Page;

/**
 * Created by Jason on 2017/11/2.
 */
public interface UserService{

    /**
     * 根据条件分页查询
     *
     * @param queryVo
     * @return
     */
    Page<User> selectPageByQueryVo(QueryVo queryVo);

    //登录方法
    public User login(String userName, String userPwd);

    //通过username查询
    public User selectUserByName(String userName);

    //通过id查询
    public User selectUserById(Integer id);

    //通过id修改
    public void updateUserById(User user);

    //通过id删除
    public void deleteUserById(Integer id);

    //通过id增加
    public void addUserById(User user);

}
