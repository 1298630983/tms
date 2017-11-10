package team.jhz.tms.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import team.jhz.tms.po.BaseDict;
import team.jhz.tms.po.Line;
import team.jhz.tms.po.QueryVo;
import team.jhz.tms.service.BaseDictService;
import team.jhz.tms.service.LineService;
import team.jhz.tms.utils.Page;

import java.util.List;

/**
 * Created by Jason on 2017/11/9.
 */
@Controller
@RequestMapping("/line")
public class LineController {
    
    @Autowired
    private BaseDictService baseDictService;
    @Autowired
    private LineService lineService;

    // 线路类型
    @Value("${LINE_FORM_TYPE}")
    private String LINE_FORM_TYPE;
    // 目的地
    @Value("${LINE_DES_TYPE}")
    private String LINE_DES_TYPE;

    //入口
    @RequestMapping(value = "/list")
    public String list(QueryVo vo, Model model) {

        List<BaseDict> lineForm = baseDictService.selectBaseDictListByCode(LINE_FORM_TYPE);
        List<BaseDict> desType = baseDictService.selectBaseDictListByCode(LINE_DES_TYPE);
        model.addAttribute("lineForm",lineForm);
        model.addAttribute("desType",desType);

        //通过条件查询分页对象
        Page<Line> page = lineService.selectPageByQueryVo(vo);
        model.addAttribute("page", page);
        model.addAttribute("lineName", vo.getLineName());
        model.addAttribute("lineType", vo.getLineType());
        model.addAttribute("lineDes", vo.getLineDes());

        return "line";
    }

    //去修改页面
    @RequestMapping(value = "/edit.action")
    public @ResponseBody
    Line edit(Integer id) {
        return lineService.selectLineById(id);
    }

    //保存修改
    @RequestMapping(value = "/update.action")
    public @ResponseBody
    String update(Line line) {
        //修改
        lineService.updateLineById(line);
        return "OK";
    }

    //删除客户信息
    @RequestMapping(value = "/delete.action")
    public @ResponseBody
    String delete(Integer id) {
        //删除
        lineService.deleteLineById(id);
        return "OK";
    }

    //去增加页面
    @RequestMapping(value = "/add.action")
    public @ResponseBody
    Line add(Integer id) {
        return lineService.selectLineById(id);
    }

    //保存修改
    @RequestMapping(value = "/addSave.action")
    public @ResponseBody
    String addSave(Line line) {
        //增加
        lineService.addLineById(line);
        return "OK";
    }
    
}
