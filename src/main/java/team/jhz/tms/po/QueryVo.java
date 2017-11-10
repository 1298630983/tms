package team.jhz.tms.po;

/**
 * Created by Jason on 2017/10/26.
 */
public class QueryVo {

    private String custName;
    private String custSource;
    private String custIndustry;
    private String custLevel;

    private String guideName;
    private String guideLevel;
    private String guideLanguage;

    private String lineName;
    private String lineType;
    private String lineDes;

    private String userName;
    private String userDep;
    private String userLevel;

    // 当前页码数
    private Integer page;
    // 数据库从哪一条数据开始查
    private Integer start = 0;
    // 每页显示数据条数
    private Integer rows;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserDep() {
        return userDep;
    }

    public void setUserDep(String userDep) {
        this.userDep = userDep;
    }

    public String getUserLevel() {
        return userLevel;
    }

    public void setUserLevel(String userLevel) {
        this.userLevel = userLevel;
    }

    public String getLineName() {
        return lineName;
    }

    public void setLineName(String lineName) {
        this.lineName = lineName;
    }

    public String getLineType() {
        return lineType;
    }

    public void setLineType(String lineType) {
        this.lineType = lineType;
    }

    public String getLineDes() {
        return lineDes;
    }

    public void setLineDes(String lineDes) {
        this.lineDes = lineDes;
    }

    public String getGuideName() {
        return guideName;
    }

    public void setGuideName(String guideName) {
        this.guideName = guideName;
    }

    public String getGuideLevel() {
        return guideLevel;
    }

    public void setGuideLevel(String guideLevel) {
        this.guideLevel = guideLevel;
    }

    public String getGuideLanguage() {
        return guideLanguage;
    }

    public void setGuideLanguage(String guideLanguage) {
        this.guideLanguage = guideLanguage;
    }

    public String getCustName() {
        return custName;
    }

    public void setCustName(String custName) {
        this.custName = custName;
    }

    public String getCustSource() {
        return custSource;
    }

    public void setCustSource(String custSource) {
        this.custSource = custSource;
    }

    public String getCustIndustry() {
        return custIndustry;
    }

    public void setCustIndustry(String custIndustry) {
        this.custIndustry = custIndustry;
    }

    public String getCustLevel() {
        return custLevel;
    }

    public void setCustLevel(String custLevel) {
        this.custLevel = custLevel;
    }

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getStart() {
        return start;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public Integer getRows() {
        return rows;
    }

    public void setRows(Integer rows) {
        this.rows = rows;
    }
}
