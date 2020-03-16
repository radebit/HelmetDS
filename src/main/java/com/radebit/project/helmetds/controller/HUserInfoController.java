package com.radebit.project.helmetds.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.hutool.core.lang.Assert;
import com.radebit.common.utils.SecurityUtils;
import com.radebit.project.helmetds.domain.vo.HUserInfoVO;
import com.radebit.project.system.domain.SysUser;
import com.radebit.project.system.service.ISysUserService;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.radebit.framework.aspectj.lang.annotation.Log;
import com.radebit.framework.aspectj.lang.enums.BusinessType;
import com.radebit.project.helmetds.domain.HUserInfo;
import com.radebit.project.helmetds.service.IHUserInfoService;
import com.radebit.framework.web.controller.BaseController;
import com.radebit.framework.web.domain.AjaxResult;
import com.radebit.common.utils.poi.ExcelUtil;
import com.radebit.framework.web.page.TableDataInfo;

/**
 * 员工信息Controller
 *
 * @author Rade
 * @date 2020-03-15
 */
@RestController
@RequestMapping("/helmetds/userInfo")
public class HUserInfoController extends BaseController {
    @Autowired
    private IHUserInfoService hUserInfoService;

    @Autowired
    private ISysUserService sysUserService;

    /**
     * 查询员工信息列表
     */
    @PreAuthorize("@ss.hasPermi('helmetds:userInfo:list')")
    @GetMapping("/list")
    public TableDataInfo list(HUserInfo hUserInfo) {
        startPage();
        List<HUserInfoVO> list = new ArrayList<>();
        for (HUserInfo hUserInfoTemp : hUserInfoService.selectHUserInfoList(hUserInfo)) {
            list.add(hUserInfoService.PoToVo(hUserInfoTemp));
        }
        return getDataTable(list);
    }

    /**
     * 导出员工信息列表
     */
    @PreAuthorize("@ss.hasPermi('helmetds:userInfo:export')")
    @Log(title = "员工信息", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(HUserInfo hUserInfo) {
        List<HUserInfo> list = hUserInfoService.selectHUserInfoList(hUserInfo);
        ExcelUtil<HUserInfo> util = new ExcelUtil<HUserInfo>(HUserInfo.class);
        return util.exportExcel(list, "userInfo");
    }

    /**
     * 获取员工信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('helmetds:userInfo:query')")
    @GetMapping(value = "/{userId}")
    public AjaxResult getInfo(@PathVariable("userId") Long userId) {
        return AjaxResult.success(hUserInfoService.selectHUserInfoById(userId));
    }

    /**
     * 新增员工信息
     */
    @PreAuthorize("@ss.hasPermi('helmetds:userInfo:add')")
    @Log(title = "员工信息", businessType = BusinessType.INSERT)
    @Transactional(rollbackFor = Exception.class)
    @PostMapping
    public AjaxResult add(@RequestBody HUserInfoVO hUserInfoVO) throws SQLException {
        //断言
        Assert.notNull(hUserInfoVO.getUserName(), "用户名不能为空");
        Assert.notNull(hUserInfoVO.getPhonenumber(), "手机号不能为空");
        //用户名查重
        if (sysUserService.selectUserByUserName(hUserInfoVO.getUserName()) != null) {
            return AjaxResult.error("用户名重复！");
        }
        //手机号查重
        if (sysUserService.selectUserByPhonenumber(hUserInfoVO.getPhonenumber()) != null) {
            return AjaxResult.error("手机号重复！");
        }
        SysUser sysUser = new SysUser();
        sysUser.setDeptId(103L);
        sysUser.setUserName(hUserInfoVO.getUserName());
        sysUser.setNickName("匿名");
        sysUser.setEmail(hUserInfoVO.getEmail());
        sysUser.setPhonenumber(hUserInfoVO.getPhonenumber());
        sysUser.setSex(hUserInfoVO.getSex() == null ? "2" : hUserInfoVO.getSex());
        sysUser.setPassword(SecurityUtils.encryptPassword(hUserInfoVO.getPassword().equals("") ? "123456" : hUserInfoVO.getPassword()));
        sysUser.setStatus(hUserInfoVO.getStatus() == null ? "0" : hUserInfoVO.getStatus());
        sysUser.setRoleIds(new Long[]{4L});

        if (sysUserService.insertUser(sysUser) != 1) {
            throw new SQLException("新增系统用户异常");
        }

        HUserInfo hUserInfo = new HUserInfo();
        hUserInfo.setUserId(sysUser.getUserId());
        hUserInfo.setRealName(hUserInfoVO.getRealName());
        hUserInfo.setIdNumber(hUserInfoVO.getIdNumber());
        hUserInfo.setPicFace(hUserInfoVO.getPicFace());
        hUserInfo.setPicHelmet(hUserInfoVO.getPicHelmet());
        hUserInfo.setPicZj(hUserInfoVO.getPicZj());
        hUserInfo.setBirthday(hUserInfoVO.getBirthday());
        hUserInfo.setHomeAddress(hUserInfoVO.getHomeAddress());
        hUserInfo.setEntryTime(hUserInfoVO.getEntryTime());
        hUserInfo.setFounder(SecurityUtils.getLoginUser().getUser().getUserId());
        hUserInfo.setRemarks(hUserInfoVO.getRemarks());

        if (hUserInfoService.insertHUserInfo(hUserInfo) != 1) {
            throw new SQLException("新增员工数据异常");
        }

        return AjaxResult.success("新增员工成功！");
    }

    /**
     * 修改员工信息
     */
    @PreAuthorize("@ss.hasPermi('helmetds:userInfo:edit')")
    @Log(title = "员工信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody HUserInfo hUserInfo) {
        return toAjax(hUserInfoService.updateHUserInfo(hUserInfo));
    }

    /**
     * 删除员工信息
     */
    @PreAuthorize("@ss.hasPermi('helmetds:userInfo:remove')")
    @Log(title = "员工信息", businessType = BusinessType.DELETE)
    @DeleteMapping("/{userIds}")
    public AjaxResult remove(@PathVariable Long[] userIds) {
        return toAjax(hUserInfoService.deleteHUserInfoByIds(userIds));
    }
}
