package com.radebit.project.helmetds.service.impl;

import java.util.List;
import com.radebit.common.utils.DateUtils;
import com.radebit.project.helmetds.domain.vo.HCameraListVO;
import com.radebit.project.helmetds.service.IHCameraGroupService;
import com.radebit.project.helmetds.service.IHUserInfoService;
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

    @Autowired
    private IHCameraGroupService hCameraGroupService;

    @Autowired
    private IHUserInfoService hUserInfoService;

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

    /**
     * PoToVo
     *
     * @param hCameraList
     * @return
     */
    @Override
    public HCameraListVO PoToVo(HCameraList hCameraList) {
        HCameraListVO hCameraListVO = new HCameraListVO();
        hCameraListVO.setCameraId(hCameraList.getCameraId());
        hCameraListVO.setGroupId(hCameraList.getGroupId());
        hCameraListVO.setGroupName(hCameraGroupService.selectHCameraGroupById(hCameraList.getGroupId()).getGroupName());
        hCameraListVO.setCameraName(hCameraList.getCameraName());
        hCameraListVO.setRtspStream(hCameraList.getRtspStream());
        hCameraListVO.setRtmpStream(hCameraList.getRtmpStream());
        hCameraListVO.setMainStream(hCameraList.getMainStream());
        hCameraListVO.setFrequencyBand(hCameraList.getFrequencyBand());
        hCameraListVO.setSecretKey(hCameraList.getSecretKey());
        hCameraListVO.setScreenshots(hCameraList.getScreenshots());
        hCameraListVO.setFounder(hCameraList.getFounder());
        hCameraListVO.setFounderName(hUserInfoService.selectHUserInfoById(hCameraList.getFounder()).getRealName());
        hCameraListVO.setState(hCameraList.getState());
        hCameraListVO.setCreateTime(hCameraList.getCreateTime());
        hCameraListVO.setUpdateTime(hCameraList.getUpdateTime());
        return hCameraListVO;

    }
}
