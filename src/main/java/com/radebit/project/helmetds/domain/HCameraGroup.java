package com.radebit.project.helmetds.domain;

import com.radebit.framework.aspectj.lang.annotation.Excel;
import com.radebit.framework.web.domain.BaseEntity;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

/**
 * 摄像头分组对象 h_camera_group
 * 
 * @author Rade
 * @date 2020-03-16
 */
public class HCameraGroup extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 摄像头分组ID */
    @Excel(name = "摄像头分组ID")
    private Long groupId;

    /** 摄像头分组名称 */
    @Excel(name = "摄像头分组名称")
    private String groupName;

    public void setGroupId(Long groupId) 
    {
        this.groupId = groupId;
    }

    public Long getGroupId() 
    {
        return groupId;
    }
    public void setGroupName(String groupName) 
    {
        this.groupName = groupName;
    }

    public String getGroupName() 
    {
        return groupName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("groupId", getGroupId())
            .append("groupName", getGroupName())
            .toString();
    }
}
