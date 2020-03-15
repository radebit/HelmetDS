package com.radebit.project.helmetds.controller;

import java.util.ArrayList;
import java.util.List;

import com.radebit.project.helmetds.domain.vo.HUserInfoVO;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
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
    @PostMapping
    public AjaxResult add(@RequestBody HUserInfo hUserInfo) {
        return toAjax(hUserInfoService.insertHUserInfo(hUserInfo));
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
