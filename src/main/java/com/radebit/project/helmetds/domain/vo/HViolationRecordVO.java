package com.radebit.project.helmetds.domain.vo;

import java.util.Date;

/**
 * @author Rade
 * @date 2020/3/16 9:52 下午
 * @url https://blog.radebit.com
 * 说明：
 */
public class HViolationRecordVO {
    /** 违规id */
    private Long violationId;

    /** 违规人员id */
    private Long userId;

    /** 违规人员姓名 */
    private String userRealName;

    /** 违规类型(0-未带安全帽,1-安全帽佩戴不规范,2-其他) */
    private String violationType;

    /** 违规内容 */
    private String violationContent;

    /** 违规地点 */
    private String violationPlace;

    /** 违规截图 */
    private String screenshots;

    /** 是否处理(0-待处理,1-确认违规,2-误报违规) */
    private String dealState;

    /** 抓拍设备 */
    private Long cameraId;

    /** 抓拍设备名称 */
    private String cameraName;

    /** 备注 */
    private String remarks;

    /** 违规时间 */
    private Date createTime;

    public Long getViolationId() {
        return violationId;
    }

    public void setViolationId(Long violationId) {
        this.violationId = violationId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getUserRealName() {
        return userRealName;
    }

    public void setUserRealName(String userRealName) {
        this.userRealName = userRealName;
    }

    public String getViolationType() {
        return violationType;
    }

    public void setViolationType(String violationType) {
        this.violationType = violationType;
    }

    public String getViolationContent() {
        return violationContent;
    }

    public void setViolationContent(String violationContent) {
        this.violationContent = violationContent;
    }

    public String getViolationPlace() {
        return violationPlace;
    }

    public void setViolationPlace(String violationPlace) {
        this.violationPlace = violationPlace;
    }

    public String getScreenshots() {
        return screenshots;
    }

    public void setScreenshots(String screenshots) {
        this.screenshots = screenshots;
    }

    public String getDealState() {
        return dealState;
    }

    public void setDealState(String dealState) {
        this.dealState = dealState;
    }

    public Long getCameraId() {
        return cameraId;
    }

    public void setCameraId(Long cameraId) {
        this.cameraId = cameraId;
    }

    public String getCameraName() {
        return cameraName;
    }

    public void setCameraName(String cameraName) {
        this.cameraName = cameraName;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }
}
