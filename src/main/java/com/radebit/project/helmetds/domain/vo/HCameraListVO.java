package com.radebit.project.helmetds.domain.vo;

import java.util.Date;

/**
 * @author Rade
 * @date 2020/3/16 9:39 下午
 * @url https://blog.radebit.com
 * 说明：
 */
public class HCameraListVO {
    /** 摄像头编号 */
    private Long cameraId;

    /** 摄像头分组ID */
    private Long groupId;

    /** 摄像头分组名称 */
    private String groupName;

    /** 摄像头名称 */
    private String cameraName;

    /** rtsp流地址 */
    private String rtspStream;

    /** rtmp流地址 */
    private String rtmpStream;

    /** 主流地址 */
    private String mainStream;

    /** 频段 */
    private String frequencyBand;

    /** 密钥 */
    private String secretKey;

    /** 抓图 */
    private String screenshots;

    /** 归属人ID */
    private Long founder;

    /** 归属人姓名 */
    private String founderName;

    /** 摄像头状态(0-离线,1-在线) */
    private String state;

    /** 创建时间 */
    private Date createTime;

    /** 更新时间 */
    private Date updateTime;

    public Long getCameraId() {
        return cameraId;
    }

    public void setCameraId(Long cameraId) {
        this.cameraId = cameraId;
    }

    public Long getGroupId() {
        return groupId;
    }

    public void setGroupId(Long groupId) {
        this.groupId = groupId;
    }

    public String getGroupName() {
        return groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getCameraName() {
        return cameraName;
    }

    public void setCameraName(String cameraName) {
        this.cameraName = cameraName;
    }

    public String getRtspStream() {
        return rtspStream;
    }

    public void setRtspStream(String rtspStream) {
        this.rtspStream = rtspStream;
    }

    public String getRtmpStream() {
        return rtmpStream;
    }

    public void setRtmpStream(String rtmpStream) {
        this.rtmpStream = rtmpStream;
    }

    public String getMainStream() {
        return mainStream;
    }

    public void setMainStream(String mainStream) {
        this.mainStream = mainStream;
    }

    public String getFrequencyBand() {
        return frequencyBand;
    }

    public void setFrequencyBand(String frequencyBand) {
        this.frequencyBand = frequencyBand;
    }

    public String getSecretKey() {
        return secretKey;
    }

    public void setSecretKey(String secretKey) {
        this.secretKey = secretKey;
    }

    public String getScreenshots() {
        return screenshots;
    }

    public void setScreenshots(String screenshots) {
        this.screenshots = screenshots;
    }

    public Long getFounder() {
        return founder;
    }

    public void setFounder(Long founder) {
        this.founder = founder;
    }

    public String getFounderName() {
        return founderName;
    }

    public void setFounderName(String founderName) {
        this.founderName = founderName;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}
