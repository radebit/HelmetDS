package com.radebit.project.helmetds.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.radebit.project.helmetds.mapper.HCameraGroupMapper;
import com.radebit.project.helmetds.domain.HCameraGroup;
import com.radebit.project.helmetds.service.IHCameraGroupService;

/**
 * 摄像头分组Service业务层处理
 * 
 * @author Rade
 * @date 2020-03-16
 */
@Service
public class HCameraGroupServiceImpl implements IHCameraGroupService 
{
    @Autowired
    private HCameraGroupMapper hCameraGroupMapper;

    /**
     * 查询摄像头分组
     * 
     * @param groupId 摄像头分组ID
     * @return 摄像头分组
     */
    @Override
    public HCameraGroup selectHCameraGroupById(Long groupId)
    {
        return hCameraGroupMapper.selectHCameraGroupById(groupId);
    }

    /**
     * 查询摄像头分组列表
     * 
     * @param hCameraGroup 摄像头分组
     * @return 摄像头分组
     */
    @Override
    public List<HCameraGroup> selectHCameraGroupList(HCameraGroup hCameraGroup)
    {
        return hCameraGroupMapper.selectHCameraGroupList(hCameraGroup);
    }

    /**
     * 新增摄像头分组
     * 
     * @param hCameraGroup 摄像头分组
     * @return 结果
     */
    @Override
    public int insertHCameraGroup(HCameraGroup hCameraGroup)
    {
        return hCameraGroupMapper.insertHCameraGroup(hCameraGroup);
    }

    /**
     * 修改摄像头分组
     * 
     * @param hCameraGroup 摄像头分组
     * @return 结果
     */
    @Override
    public int updateHCameraGroup(HCameraGroup hCameraGroup)
    {
        return hCameraGroupMapper.updateHCameraGroup(hCameraGroup);
    }

    /**
     * 批量删除摄像头分组
     * 
     * @param groupIds 需要删除的摄像头分组ID
     * @return 结果
     */
    @Override
    public int deleteHCameraGroupByIds(Long[] groupIds)
    {
        return hCameraGroupMapper.deleteHCameraGroupByIds(groupIds);
    }

    /**
     * 删除摄像头分组信息
     * 
     * @param groupId 摄像头分组ID
     * @return 结果
     */
    @Override
    public int deleteHCameraGroupById(Long groupId)
    {
        return hCameraGroupMapper.deleteHCameraGroupById(groupId);
    }
}
