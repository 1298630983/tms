package team.jhz.tms.dao;

import team.jhz.tms.po.Customer;
import team.jhz.tms.po.QueryVo;

import java.util.List;

/**
 * Created by Jason on 2017/10/27.
 */
public interface CustomerDao {

    //总条数
    public Integer customerCountByQueryVo(QueryVo vo);
    //结果集
    public List<Customer> selectCustomerListByQueryVo(QueryVo vo);

    //通过id查询客户
    public Customer selectCustomerById(Integer id);

    //通过id修改客户
    public void updateCustomerById(Customer customer);

    //通过id删除客户
    public void deleteCustomerById(Integer id);
}
