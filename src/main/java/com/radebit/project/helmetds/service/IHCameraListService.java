package com.radebit.project.helmetds.service;

import java.util.List;
import com.radebit.project.helmetds.domain.HCameraList;
import com.radebit.project.helmetds.domain.vo.HCameraListVO;

/**
 * 摄像头信息Service接口
 * 
 * @author Rade
 * @date 2020-03-16
 */
public interface IHCameraListService 
{
    /**
     * 查询摄像头信息
     * 
     * @param cameraId 摄像头信息ID
     * @return 摄像头信息
     */
    public HCameraList selectHCameraListById(Long cameraId);

    /**
     * 查询摄像头信息列表
     * 
     * @param hCameraList 摄像头信息
     * @return 摄像头信息集合
     */
    public List<HCameraList> selectHCameraListList(HCameraList hCameraList);

    /**
     * 新增摄像头信息
     * 
     * @param hCameraList 摄像头信息
     * @return 结果
     */
    public int insertHCameraList(HCameraList hCameraList);

    /**
     * 修改摄像头信息
     * 
     * @param hCameraList 摄像头信息
     * @return 结果
     */
    public int updateHCameraList(HCameraList hCameraList);

    /**
     * 批量删除摄像头信息
     * 
     * @param cameraIds 需要删除的摄像头信息ID
     * @return 结果
     */
    public int deleteHCameraListByIds(Long[] cameraIds);

    /**
     * 删除摄像头信息信息
     * 
     * @param cameraId 摄像头信息ID
     * @return 结果
     */
    public int deleteHCameraListById(Long cameraId);

    /**
     * PoToVo
     *
     * @param hCameraList
     * @return
     */
    public HCameraListVO PoToVo(HCameraList hCameraList);
}
