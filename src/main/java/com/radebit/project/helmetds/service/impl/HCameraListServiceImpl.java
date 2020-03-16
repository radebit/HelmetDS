package com.radebit.project.helmetds.service.impl;

import java.util.List;
import com.radebit.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.radebit.project.helmetds.mapper.HCameraListMapper;
import com.radebit.project.helmetds.domain.HCameraList;
import com.radebit.project.helmetds.service.IHCameraListService;

/**
 * 摄像头信息Service业务层处理
 * 
 * @author Rade
 * @date 2020-03-16
 */
@Service
public class HCameraListServiceImpl implements IHCameraListService 
{
    @Autowired
    private HCameraListMapper hCameraListMapper;

    /**
     * 查询摄像头信息
     * 
     * @param cameraId 摄像头信息ID
     * @return 摄像头信息
     */
    @Override
    public HCameraList selectHCameraListById(Long cameraId)
    {
        return hCameraListMapper.selectHCameraListById(cameraId);
    }

    /**
     * 查询摄像头信息列表
     * 
     * @param hCameraList 摄像头信息
     * @return 摄像头信息
     */
    @Override
    public List<HCameraList> selectHCameraListList(HCameraList hCameraList)
    {
        return hCameraListMapper.selectHCameraListList(hCameraList);
    }

    /**
     * 新增摄像头信息
     * 
     * @param hCameraList 摄像头信息
     * @return 结果
     */
    @Override
    public int insertHCameraList(HCameraList hCameraList)
    {
        hCameraList.setCreateTime(DateUtils.getNowDate());
        return hCameraListMapper.insertHCameraList(hCameraList);
    }

    /**
     * 修改摄像头信息
     * 
     * @param hCameraList 摄像头信息
     * @return 结果
     */
    @Override
    public int updateHCameraList(HCameraList hCameraList)
    {
        hCameraList.setUpdateTime(DateUtils.getNowDate());
        return hCameraListMapper.updateHCameraList(hCameraList);
    }

    /**
     * 批量删除摄像头信息
     * 
     * @param cameraIds 需要删除的摄像头信息ID
     * @return 结果
     */
    @Override
    public int deleteHCameraListByIds(Long[] cameraIds)
    {
        return hCameraListMapper.deleteHCameraListByIds(cameraIds);
    }

    /**
     * 删除摄像头信息信息
     * 
     * @param cameraId 摄像头信息ID
     * @return 结果
     */
    @Override
    public int deleteHCameraListById(Long cameraId)
    {
        return hCameraListMapper.deleteHCameraListById(cameraId);
    }
}
