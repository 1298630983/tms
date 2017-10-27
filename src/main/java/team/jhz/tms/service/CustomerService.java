package team.jhz.tms.service;


import team.jhz.tms.po.Customer;
import team.jhz.tms.po.QueryVo;
import team.jhz.tms.utils.Page;

/**
 * Created by Jason on 2017/10/26.
 */
public interface CustomerService {

    /**
     * 根据条件分页查询客户
     *
     * @param queryVo
     * @return
     */
    Page<Customer> selectPageByQueryVo(QueryVo queryVo);

    //通过id查询客户
    public Customer selectCustomerById(Integer id);

    //通过id修改客户
    public void updateCustomerById(Customer customer);

    //通过id删除客户
    public void deleteCustomerById(Integer id);
}
