package com.radebit.project.helmetds.domain.vo;

import java.util.Date;

/**
 * @author Rade
 * @date 2020/3/15 8:32 下午
 * @url https://blog.radebit.com
 * 说明：
 */
public class HUserInfoVO {
    /**
     * 用户ID
     */
    private Long userId;

    /**
     * 部门ID
     */
    private Long deptId;

    /**
     * 用户账号
     */
    private String userName;

    /**
     * 用户密码
     */
    private String password;

    /**
     * 用户邮箱
     */
    private String email;

    /**
     * 手机号码
     */
    private String phonenumber;

    /**
     * 用户性别 （0=男,1=女,2=未知）
     */
    private String sex;

    /**
     * 最后登陆时间
     */
    private Date loginDate;

    /**
     * 真实姓名
     */
    private String realName;

    /**
     * 身份证号
     */
    private String idNumber;

    /**
     * 人脸照片
     */
    private String picFace;

    /**
     * 安全帽照片
     */
    private String picHelmet;

    /**
     * 证件照
     */
    private String picZj;

    /**
     * 生日
     */
    private Date birthday;

    /**
     * 家庭住址
     */
    private String homeAddress;

    /**
     * 入职时间
     */
    private Date entryTime;

    /**
     * 备注说明
     */
    private String remarks;

    /**
     * 帐号状态（0正常 1停用）
     */
    private String status;

    /**
     * 最后登陆IP
     */
    private String loginIp;

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getDeptId() {
        return deptId;
    }

    public void setDeptId(Long deptId) {
        this.deptId = deptId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(String phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getSex() {
        return sex;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Date getLoginDate() {
        return loginDate;
    }

    public void setLoginDate(Date loginDate) {
        this.loginDate = loginDate;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getIdNumber() {
        return idNumber;
    }

    public void setIdNumber(String idNumber) {
        this.idNumber = idNumber;
    }

    public String getPicFace() {
        return picFace;
    }

    public void setPicFace(String picFace) {
        this.picFace = picFace;
    }

    public String getPicHelmet() {
        return picHelmet;
    }

    public void setPicHelmet(String picHelmet) {
        this.picHelmet = picHelmet;
    }

    public String getPicZj() {
        return picZj;
    }

    public void setPicZj(String picZj) {
        this.picZj = picZj;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getHomeAddress() {
        return homeAddress;
    }

    public void setHomeAddress(String homeAddress) {
        this.homeAddress = homeAddress;
    }

    public Date getEntryTime() {
        return entryTime;
    }

    public void setEntryTime(Date entryTime) {
        this.entryTime = entryTime;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getLoginIp() {
        return loginIp;
    }

    public void setLoginIp(String loginIp) {
        this.loginIp = loginIp;
    }
}
