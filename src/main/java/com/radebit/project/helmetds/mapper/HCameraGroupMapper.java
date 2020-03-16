package com.radebit.project.helmetds.mapper;

import java.util.List;
import com.radebit.project.helmetds.domain.HCameraGroup;

/**
 * 摄像头分组Mapper接口
 * 
 * @author Rade
 * @date 2020-03-16
 */
public interface HCameraGroupMapper 
{
    /**
     * 查询摄像头分组
     * 
     * @param groupId 摄像头分组ID
     * @return 摄像头分组
     */
    public HCameraGroup selectHCameraGroupById(Long groupId);

    /**
     * 查询摄像头分组列表
     * 
     * @param hCameraGroup 摄像头分组
     * @return 摄像头分组集合
     */
    public List<HCameraGroup> selectHCameraGroupList(HCameraGroup hCameraGroup);

    /**
     * 新增摄像头分组
     * 
     * @param hCameraGroup 摄像头分组
     * @return 结果
     */
    public int insertHCameraGroup(HCameraGroup hCameraGroup);

    /**
     * 修改摄像头分组
     * 
     * @param hCameraGroup 摄像头分组
     * @return 结果
     */
    public int updateHCameraGroup(HCameraGroup hCameraGroup);

    /**
     * 删除摄像头分组
     * 
     * @param groupId 摄像头分组ID
     * @return 结果
     */
    public int deleteHCameraGroupById(Long groupId);

    /**
     * 批量删除摄像头分组
     * 
     * @param groupIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteHCameraGroupByIds(Long[] groupIds);
}
