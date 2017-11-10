package team.jhz.tms.web;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import team.jhz.tms.po.BaseDict;
import team.jhz.tms.po.Customer;
import team.jhz.tms.po.QueryVo;
import team.jhz.tms.service.BaseDictService;
import team.jhz.tms.service.CustomerService;
import team.jhz.tms.utils.Page;

import java.util.List;

/**
 * 客户管理
 * Created by Jason on 2017/10/26.
 */
@Controller
@RequestMapping("/customer")
public class CustomerController {

    @Autowired
    private BaseDictService baseDictService;
    @Autowired
    private CustomerService customerService;

    // 客户来源
    @Value("${CUSTOMER_FROM_TYPE}")
    private String CUSTOMER_FROM_TYPE;
    // 客户行业
    @Value("${CUSTOMER_INDUSTRY_TYPE}")
    private String CUSTOMER_INDUSTRY_TYPE;
    // 客户级别
    @Value("${CUSTOMER_LEVEL_TYPE}")
    private String CUSTOMER_LEVEL_TYPE;


    //入口
    @RequestMapping(value = "/list")
    public String list(QueryVo vo, Model model) {
        List<BaseDict> fromType = baseDictService.selectBaseDictListByCode(CUSTOMER_FROM_TYPE);
        List<BaseDict> industryType = baseDictService.selectBaseDictListByCode(CUSTOMER_INDUSTRY_TYPE);
        List<BaseDict> levelType = baseDictService.selectBaseDictListByCode(CUSTOMER_LEVEL_TYPE);
        model.addAttribute("fromType",fromType);
        model.addAttribute("industryType",industryType);
        model.addAttribute("levelType",levelType);

        //通过四个条件查询分页对象
        Page<Customer> page = customerService.selectPageByQueryVo(vo);
        model.addAttribute("page", page);
        model.addAttribute("custName", vo.getCustName());
        model.addAttribute("custSource", vo.getCustSource());
        model.addAttribute("custIndustry", vo.getCustIndustry());
        model.addAttribute("custLevel", vo.getCustLevel());

        return "customer";
    }

    //去修改页面
    @RequestMapping(value = "/edit.action")
    public @ResponseBody
    Customer edit(Integer id) {
        return customerService.selectCustomerById(id);
    }

    //保存修改
    @RequestMapping(value = "/update.action")
    public @ResponseBody
    String update(Customer customer) {
        //修改
        customerService.updateCustomerById(customer);
        return "OK";
    }

    //删除客户信息
    @RequestMapping(value = "/delete.action")
    public @ResponseBody
    String delete(Integer id) {
        //删除
        customerService.deleteCustomerById(id);
        return "OK";
    }

    //去增加页面
    @RequestMapping(value = "/add.action")
    public @ResponseBody
    Customer add(Integer id) {
        return customerService.selectCustomerById(id);
    }

    //保存修改
    @RequestMapping(value = "/addSave.action")
    public @ResponseBody
    String addSave(Customer customer) {
        //增加
        customerService.addCustomerById(customer);
        return "OK";
    }



}
