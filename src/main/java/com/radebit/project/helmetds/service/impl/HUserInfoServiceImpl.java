package com.radebit.project.helmetds.service.impl;

import java.util.List;
import com.radebit.common.utils.DateUtils;
import com.radebit.project.helmetds.domain.vo.HUserInfoVO;
import com.radebit.project.system.domain.SysUser;
import com.radebit.project.system.service.ISysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.radebit.project.helmetds.mapper.HUserInfoMapper;
import com.radebit.project.helmetds.domain.HUserInfo;
import com.radebit.project.helmetds.service.IHUserInfoService;

/**
 * 员工信息Service业务层处理
 * 
 * @author Rade
 * @date 2020-03-15
 */
@Service
public class HUserInfoServiceImpl implements IHUserInfoService 
{
    @Autowired
    private HUserInfoMapper hUserInfoMapper;

    @Autowired
    private ISysUserService sysUserService;

    /**
     * 查询员工信息
     * 
     * @param userId 员工信息ID
     * @return 员工信息
     */
    @Override
    public HUserInfo selectHUserInfoById(Long userId)
    {
        return hUserInfoMapper.selectHUserInfoById(userId);
    }

    /**
     * 查询员工信息列表
     * 
     * @param hUserInfo 员工信息
     * @return 员工信息
     */
    @Override
    public List<HUserInfo> selectHUserInfoList(HUserInfo hUserInfo)
    {
        return hUserInfoMapper.selectHUserInfoList(hUserInfo);
    }

    /**
     * 新增员工信息
     * 
     * @param hUserInfo 员工信息
     * @return 结果
     */
    @Override
    public int insertHUserInfo(HUserInfo hUserInfo)
    {
        hUserInfo.setCreateTime(DateUtils.getNowDate());
        return hUserInfoMapper.insertHUserInfo(hUserInfo);
    }

    /**
     * 修改员工信息
     * 
     * @param hUserInfo 员工信息
     * @return 结果
     */
    @Override
    public int updateHUserInfo(HUserInfo hUserInfo)
    {
        hUserInfo.setUpdateTime(DateUtils.getNowDate());
        return hUserInfoMapper.updateHUserInfo(hUserInfo);
    }

    /**
     * 批量删除员工信息
     * 
     * @param userIds 需要删除的员工信息ID
     * @return 结果
     */
    @Override
    public int deleteHUserInfoByIds(Long[] userIds)
    {
        sysUserService.deleteUserByIds(userIds);    //同步删除操作
        return hUserInfoMapper.deleteHUserInfoByIds(userIds);
    }

    /**
     * 删除员工信息信息
     * 
     * @param userId 员工信息ID
     * @return 结果
     */
    @Override
    public int deleteHUserInfoById(Long userId)
    {
        return hUserInfoMapper.deleteHUserInfoById(userId);
    }

    /**
     * PoToVo
     *
     * @param hUserInfo
     * @return
     */
    @Override
    public HUserInfoVO PoToVo(HUserInfo hUserInfo) {
        SysUser sysUser = sysUserService.selectUserById(hUserInfo.getUserId());
        HUserInfoVO hUserInfoVO = new HUserInfoVO();
        hUserInfoVO.setUserId(hUserInfo.getUserId());
        hUserInfoVO.setDeptId(sysUser.getDeptId());
        hUserInfoVO.setUserName(sysUser.getUserName());
        hUserInfoVO.setEmail(sysUser.getEmail());
        hUserInfoVO.setPhonenumber(sysUser.getPhonenumber());
        hUserInfoVO.setSex(sysUser.getSex());
        hUserInfoVO.setLoginDate(sysUser.getLoginDate());
        hUserInfoVO.setRealName(hUserInfo.getRealName());
        hUserInfoVO.setIdNumber(hUserInfo.getIdNumber());
        hUserInfoVO.setPicFace(hUserInfo.getPicFace());
        hUserInfoVO.setPicHelmet(hUserInfo.getPicHelmet());
        hUserInfoVO.setPicZj(hUserInfo.getPicZj());
        hUserInfoVO.setBirthday(hUserInfo.getBirthday());
        hUserInfoVO.setHomeAddress(hUserInfo.getHomeAddress());
        hUserInfoVO.setEntryTime(hUserInfo.getEntryTime());
        hUserInfoVO.setRemarks(hUserInfo.getRemarks());
        hUserInfoVO.setStatus(sysUser.getStatus());
        hUserInfoVO.setLoginIp(sysUser.getLoginIp());
        return hUserInfoVO;
    }


}
