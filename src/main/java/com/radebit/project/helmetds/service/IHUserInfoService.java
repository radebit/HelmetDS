package com.radebit.project.helmetds.service;

import java.util.List;
import com.radebit.project.helmetds.domain.HUserInfo;
import com.radebit.project.helmetds.domain.vo.HUserInfoVO;

/**
 * 员工信息Service接口
 * 
 * @author Rade
 * @date 2020-03-15
 */
public interface IHUserInfoService 
{
    /**
     * 查询员工信息
     * 
     * @param userId 员工信息ID
     * @return 员工信息
     */
    public HUserInfo selectHUserInfoById(Long userId);

    /**
     * 查询员工信息列表
     * 
     * @param hUserInfo 员工信息
     * @return 员工信息集合
     */
    public List<HUserInfo> selectHUserInfoList(HUserInfo hUserInfo);

    /**
     * 新增员工信息
     * 
     * @param hUserInfo 员工信息
     * @return 结果
     */
    public int insertHUserInfo(HUserInfo hUserInfo);

    /**
     * 修改员工信息
     * 
     * @param hUserInfo 员工信息
     * @return 结果
     */
    public int updateHUserInfo(HUserInfo hUserInfo);

    /**
     * 批量删除员工信息
     * 
     * @param userIds 需要删除的员工信息ID
     * @return 结果
     */
    public int deleteHUserInfoByIds(Long[] userIds);

    /**
     * 删除员工信息信息
     * 
     * @param userId 员工信息ID
     * @return 结果
     */
    public int deleteHUserInfoById(Long userId);

    /**
     * PoToVo
     *
     * @param hUserInfo
     * @return
     */
    public HUserInfoVO PoToVo(HUserInfo hUserInfo);
}
