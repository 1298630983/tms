package team.jhz.tms.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.jhz.tms.dao.UserDao;
import team.jhz.tms.po.QueryVo;
import team.jhz.tms.po.User;
import team.jhz.tms.service.UserService;
import team.jhz.tms.utils.Page;

/**
 * Created by Jason on 2017/11/2.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public Page<User> selectPageByQueryVo(QueryVo vo) {
        Page<User> page = new Page<User>();
        //每页数
        page.setSize(5);
        vo.setRows(5);

        if (null != vo) {
            //判断当前页
            if (null != vo.getPage()) {
                page.setPage(vo.getPage());
                vo.setStart((vo.getPage() -1)*vo.getRows());
            }
            if(null != vo.getUserName() && !"".equals(vo.getUserName().trim())){
                vo.setUserName(vo.getUserName().trim());
            }
            if(null != vo.getUserDep() && !"".equals(vo.getUserDep().trim())){
                vo.setUserDep(vo.getUserDep().trim());
            }
            if(null != vo.getUserLevel() && !"".equals(vo.getUserLevel().trim())){
                vo.setUserLevel(vo.getUserLevel().trim());
            }
            //总条数
            page.setTotal(userDao.userCountByQueryVo(vo));
            page.setRows(userDao.selectUserListByQueryVo(vo));
        }
        return page;
    }

    //登录方法的实现，从jsp页面获取username和password
    @Override
    public User login(String userName, String userPwd) {
        User user = userDao.selectUserByName(userName);
        if (user !=null  && user.getUser_pwd().equals(userPwd)) {
            return user;
        }
        return null;
    }

    @Override
    public User selectUserByName(String userName) {
        return userDao.selectUserByName(userName);
    }

    @Override
    public User selectUserById(Integer id) {
        return userDao.selectUserById(id);
    }

    @Override
    public void updateUserById(User user) {
        userDao.updateUserById(user);
    }

    @Override
    public void deleteUserById(Integer id) {
        userDao.deleteUserById(id);
    }

    @Override
    public void addUserById(User user) {
        userDao.addUserById(user);
    }
}
