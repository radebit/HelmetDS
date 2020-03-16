package com.radebit.project.helmetds.domain;

import com.radebit.framework.aspectj.lang.annotation.Excel;
import com.radebit.framework.web.domain.BaseEntity;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

/**
 * 摄像头信息对象 h_camera_list
 * 
 * @author Rade
 * @date 2020-03-16
 */
public class HCameraList extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 摄像头编号 */
    private Long cameraId;

    /** 摄像头分组ID */
    private Long groupId;

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

    /** 归属人 */
    private Long founder;

    /** 摄像头状态(0-离线,1-在线) */
    private String state;

    public void setCameraId(Long cameraId) 
    {
        this.cameraId = cameraId;
    }

    public Long getCameraId() 
    {
        return cameraId;
    }
    public void setGroupId(Long groupId) 
    {
        this.groupId = groupId;
    }

    public Long getGroupId() 
    {
        return groupId;
    }
    public void setCameraName(String cameraName) 
    {
        this.cameraName = cameraName;
    }

    public String getCameraName() 
    {
        return cameraName;
    }
    public void setRtspStream(String rtspStream) 
    {
        this.rtspStream = rtspStream;
    }

    public String getRtspStream() 
    {
        return rtspStream;
    }
    public void setRtmpStream(String rtmpStream) 
    {
        this.rtmpStream = rtmpStream;
    }

    public String getRtmpStream() 
    {
        return rtmpStream;
    }
    public void setMainStream(String mainStream) 
    {
        this.mainStream = mainStream;
    }

    public String getMainStream() 
    {
        return mainStream;
    }
    public void setFrequencyBand(String frequencyBand) 
    {
        this.frequencyBand = frequencyBand;
    }

    public String getFrequencyBand() 
    {
        return frequencyBand;
    }
    public void setSecretKey(String secretKey) 
    {
        this.secretKey = secretKey;
    }

    public String getSecretKey() 
    {
        return secretKey;
    }
    public void setScreenshots(String screenshots) 
    {
        this.screenshots = screenshots;
    }

    public String getScreenshots() 
    {
        return screenshots;
    }
    public void setFounder(Long founder) 
    {
        this.founder = founder;
    }

    public Long getFounder() 
    {
        return founder;
    }
    public void setState(String state) 
    {
        this.state = state;
    }

    public String getState() 
    {
        return state;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this, ToStringStyle.MULTI_LINE_STYLE)
            .append("cameraId", getCameraId())
            .append("groupId", getGroupId())
            .append("cameraName", getCameraName())
            .append("rtspStream", getRtspStream())
            .append("rtmpStream", getRtmpStream())
            .append("mainStream", getMainStream())
            .append("frequencyBand", getFrequencyBand())
            .append("secretKey", getSecretKey())
            .append("screenshots", getScreenshots())
            .append("founder", getFounder())
            .append("state", getState())
            .append("createTime", getCreateTime())
            .append("updateTime", getUpdateTime())
            .toString();
    }
}
