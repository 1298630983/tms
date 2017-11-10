//package team.jhz.tms.test;
//
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.AbstractTransactionalJUnit4SpringContextTests;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//import team.jhz.tms.dao.UserDao;
//import team.jhz.tms.po.User;
//
///**
// * Created by Jason on 2017/11/2.
// */
//@RunWith(SpringJUnit4ClassRunner.class)
//@ContextConfiguration(locations = {"classpath:spring/*.xml"})
//public class UserDaoTest extends AbstractTransactionalJUnit4SpringContextTests {
//
//    @Autowired
//    private UserDao userDao;    //初始化Dao层，面向接口编程
//
//    /**
//     * 添加用户的单元测试，添加成功与否会有对应的提示。
//     * 当然按照我这个配置一般会正确，如果说出错就需要你一步一步的看错误的提示代码了。
//     * 添加同样的LoginId的用户会添加失败，因为在上面把LoginId作为了数据库表的主键。
//     */
//    @Test
//    public void testAdd() {
//        User user = new User();
//        user.setLoginId("002");
//        user.setName("test01");
//        user.setPwd("123456");
//        user.setSex("man");
//        int result = 0; //受影响的行数默认为0
//        try {
//            result = userDao.add(user);
//        } catch (Exception e) {
//            e.printStackTrace();
//            System.out.println("添加用户失败");
//        }
//        if (result>0)
//            System.out.println("添加用户成功");
//    }
//
//    /**
//     * 查找用户测试，成功与否会有log输出
//     */
//    @Test
//    public void testFindOneId() throws Exception {
//        User user = new User();
//        user.setLoginId("111111");
//        User result = null; //受影响的行数默认为0
//        try {
//            result = userDao.findOneById(user.getLoginId());
//        } catch (Exception e) {
//            e.printStackTrace();
//            System.out.println("查找用户失败");
//        }
//        if (null!=result)
//            System.out.println("查找用户成功\n"+result.toString());
//    }
//
//    @Test
//    public void testDel() {
//        User user = new User();
//        user.setLoginId("001");
//        int result = 0; //受影响的行数默认为0
//        try {
//            result = userDao.del(user);
//        } catch (Exception e) {
//            e.printStackTrace();
//            System.out.println("删除用户失败");
//        }
//        if (result>0)
//            System.out.println("删除用户成功");
//    }
//
//    @Test
//    public void testUpdate() {
//        User user = new User();
//        user.setLoginId("001");
//        user.setName("手把手教程");
//        user.setPwd("123456");
//        user.setSex("男");
//        int result = 0; //受影响的行数默认为0
//        try {
//            result = userDao.update(user);
//        } catch (Exception e) {
//            e.printStackTrace();
//            System.out.println("更新用户信息用户失败");
//        }
//        if (result>0)
//            System.out.println("更新用户信息用户成功");
//
//    }
//
//}
