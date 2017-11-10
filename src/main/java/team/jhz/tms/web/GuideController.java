package team.jhz.tms.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import team.jhz.tms.po.BaseDict;
import team.jhz.tms.po.Guide;
import team.jhz.tms.po.Guide;
import team.jhz.tms.po.QueryVo;
import team.jhz.tms.service.BaseDictService;
import team.jhz.tms.service.GuideService;
import team.jhz.tms.utils.Page;

import java.util.List;

/**
 * Created by Jason on 2017/11/8.
 */
@Controller
@RequestMapping("/guide")
public class GuideController {

    @Autowired
    private BaseDictService baseDictService;
    @Autowired
    private GuideService guideService;

    // 导游等级
    @Value("${GUIDE_LEVEL_TYPE}")
    private String GUIDE_LEVEL_TYPE;
    // 导游语种
    @Value("${GUIDE_LANGUAGE_TYPE}")
    private String GUIDE_LANGUAGE_TYPE;

    //入口
    @RequestMapping(value = "/list")
    public String list(QueryVo vo, Model model) {

        List<BaseDict> levelType = baseDictService.selectBaseDictListByCode(GUIDE_LEVEL_TYPE);
        List<BaseDict> languageType = baseDictService.selectBaseDictListByCode(GUIDE_LANGUAGE_TYPE);
        model.addAttribute("levelType",levelType);
        model.addAttribute("languageType",languageType);

        //通过条件查询分页对象
        Page<Guide> page = guideService.selectPageByQueryVo(vo);
        model.addAttribute("page", page);
        model.addAttribute("guideName", vo.getGuideName());
        model.addAttribute("guideLevel", vo.getGuideLevel());
        model.addAttribute("guideLanguage", vo.getGuideLanguage());
        
        return "guide";
    }

    //去修改页面
    @RequestMapping(value = "/edit.action")
    public @ResponseBody
    Guide edit(Integer id) {
        return guideService.selectGuideById(id);
    }

    //保存修改
    @RequestMapping(value = "/update.action")
    public @ResponseBody
    String update(Guide guide) {
        //修改
        guideService.updateGuideById(guide);
        return "OK";
    }

    //删除客户信息
    @RequestMapping(value = "/delete.action")
    public @ResponseBody
    String delete(Integer id) {
        //删除
        guideService.deleteGuideById(id);
        return "OK";
    }

    //去增加页面
    @RequestMapping(value = "/add.action")
    public @ResponseBody
    Guide add(Integer id) {
        return guideService.selectGuideById(id);
    }

    //保存修改
    @RequestMapping(value = "/addSave.action")
    public @ResponseBody
    String addSave(Guide guide) {
        //增加
        guideService.addGuideById(guide);
        return "OK";
    }

}
