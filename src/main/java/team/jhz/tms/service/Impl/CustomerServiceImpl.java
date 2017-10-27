package team.jhz.tms.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import team.jhz.tms.dao.CustomerDao;
import team.jhz.tms.po.Customer;
import team.jhz.tms.po.QueryVo;
import team.jhz.tms.service.CustomerService;
import team.jhz.tms.utils.Page;

/**
 * Created by Jason on 2017/10/26.
 */

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    private CustomerDao customerDao;

    @Override
    public Page<Customer> selectPageByQueryVo(QueryVo vo) {
        Page<Customer> page = new Page<Customer>();
        //每页数
        page.setSize(5);
        vo.setRows(5);

        if (null != vo) {
            //判断当前页
            if (null != vo.getPage()) {
                page.setPage(vo.getPage());
                vo.setStart((vo.getPage() -1)*vo.getRows());
            }
            if(null != vo.getCustName() && !"".equals(vo.getCustName().trim())){
                vo.setCustName(vo.getCustName().trim());
            }
            if(null != vo.getCustSource() && !"".equals(vo.getCustSource().trim())){
                vo.setCustSource(vo.getCustSource().trim());
            }
            if(null != vo.getCustIndustry() && !"".equals(vo.getCustIndustry().trim())){
                vo.setCustIndustry(vo.getCustIndustry().trim());
            }
            if(null != vo.getCustLevel() && !"".equals(vo.getCustLevel().trim())){
                vo.setCustLevel(vo.getCustLevel().trim());
            }
            //总条数
            page.setTotal(customerDao.customerCountByQueryVo(vo));
            page.setRows(customerDao.selectCustomerListByQueryVo(vo));
        }
        return page;
    }

    //通过id查询用户
    @Override
    public Customer selectCustomerById(Integer id) {
        return customerDao.selectCustomerById(id);
    }

    //修改客户通过id
    @Override
    public void updateCustomerById(Customer customer) {
        customerDao.updateCustomerById(customer);
    }

    //通过id删除客户
    @Override
    public void deleteCustomerById(Integer id) {
        customerDao.deleteCustomerById(id);
    }


}
