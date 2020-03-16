package com.radebit.project.helmetds.domain;

import com.radebit.framework.aspectj.lang.annotation.Excel;
import com.radebit.framework.web.domain.BaseEntity;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

/**
 * 安全违规记录对象 h_violation_record
 * 
 * @author Rade
 * @date 2020-03-16
 */
public class HViolationRecord extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 违规id */
    private Long violationId;

    /** 违规人员id */
    private Long userId;

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

    /** 备注 */
    private String remarks;

    public void setViolationId(Long violationId) 
    {
        this.violationId = violationId;
    }

    public Long getViolationId() 
    {
        return violationId;
    }
    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setViolationType(String violationType) 
    {
        this.violationType = violationType;
    }

    public String getViolationType() 
    {
        return violationType;
    }
    public void setViolationContent(String violationContent) 
    {
        this.violationContent = violationContent;
    }

    public String getViolationContent() 
    {
        return violationContent;
    }
    public void setViolationPlace(String violationPlace) 
    {
        this.violationPlace = violationPlace;
    }

    public String getViolationPlace() 
    {
        return violationPlace;
    }
    public void setScreenshots(String screenshots) 
    {
        this.screenshots = screenshots;
    }

    public String getScreenshots() 
    {
        return screenshots;
    }
    public void setDealState(String dealState) 
    {
        this.dealState = dealState;
    }

    public String getDealState() 
    {
        return dealState;
    }
    public void setCameraId(Long cameraId) 
    {
        this.cameraId = cameraId;
    }

    public Long getCameraId() 
    {
        return cameraId;
    }
    public void setRemarks(String remarks) 
    {
        this.remarks = remarks;
    }

    public String getRemarks() 
    {
        return remarks;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("violationId", getViolationId())
            .append("userId", getUserId())
            .append("violationType", getViolationType())
            .append("violationContent", getViolationContent())
            .append("violationPlace", getViolationPlace())
            .append("screenshots", getScreenshots())
            .append("dealState", getDealState())
            .append("cameraId", getCameraId())
            .append("remarks", getRemarks())
            .append("createTime", getCreateTime())
            .toString();
    }
}
