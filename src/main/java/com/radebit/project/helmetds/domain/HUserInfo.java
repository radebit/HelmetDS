package com.radebit.project.helmetds.domain;

import com.radebit.framework.aspectj.lang.annotation.Excel;
import com.radebit.framework.web.domain.BaseEntity;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import java.util.Date;

/**
 * 员工信息对象 h_user_info
 * 
 * @author Rade
 * @date 2020-03-15
 */
public class HUserInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 用户ID */
    private Long userId;

    /** 真实姓名 */
    private String realName;

    /** 身份证号 */
    private String idNumber;

    /** 人脸照片 */
    private String picFace;

    /** 安全帽照片 */
    private String picHelmet;

    /** 证件照 */
    private String picZj;

    /** 生日 */
    private Date birthday;

    /** 家庭住址 */
    private String homeAddress;

    /** 入职时间 */
    private Date entryTime;

    /** 所属用户 */
    private Long founder;

    /** 备注说明 */
    private String remarks;

    public void setUserId(Long userId) 
    {
        this.userId = userId;
    }

    public Long getUserId() 
    {
        return userId;
    }
    public void setRealName(String realName) 
    {
        this.realName = realName;
    }

    public String getRealName() 
    {
        return realName;
    }
    public void setIdNumber(String idNumber) 
    {
        this.idNumber = idNumber;
    }

    public String getIdNumber() 
    {
        return idNumber;
    }
    public void setPicFace(String picFace) 
    {
        this.picFace = picFace;
    }

    public String getPicFace() 
    {
        return picFace;
    }
    public void setPicHelmet(String picHelmet) 
    {
        this.picHelmet = picHelmet;
    }

    public String getPicHelmet() 
    {
        return picHelmet;
    }
    public void setPicZj(String picZj) 
    {
        this.picZj = picZj;
    }

    public String getPicZj() 
    {
        return picZj;
    }
    public void setBirthday(Date birthday) 
    {
        this.birthday = birthday;
    }

    public Date getBirthday() 
    {
        return birthday;
    }
    public void setHomeAddress(String homeAddress) 
    {
        this.homeAddress = homeAddress;
    }

    public String getHomeAddress() 
    {
        return homeAddress;
    }
    public void setEntryTime(Date entryTime) 
    {
        this.entryTime = entryTime;
    }

    public Date getEntryTime() 
    {
        return entryTime;
    }
    public void setFounder(Long founder) 
    {
        this.founder = founder;
    }

    public Long getFounder() 
    {
        return founder;
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
            .append("userId", getUserId())
            .append("realName", getRealName())
            .append("idNumber", getIdNumber())
            .append("picFace", getPicFace())
            .append("picHelmet", getPicHelmet())
            .append("picZj", getPicZj())
            .append("birthday", getBirthday())
            .append("homeAddress", getHomeAddress())
            .append("entryTime", getEntryTime())
            .append("founder", getFounder())
            .append("remarks", getRemarks())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
