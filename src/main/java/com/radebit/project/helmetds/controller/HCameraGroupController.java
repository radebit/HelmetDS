package com.radebit.project.helmetds.controller;

import java.util.List;

import com.radebit.project.helmetds.domain.HCameraList;
import com.radebit.project.helmetds.service.IHCameraListService;
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
import com.radebit.project.helmetds.domain.HCameraGroup;
import com.radebit.project.helmetds.service.IHCameraGroupService;
import com.radebit.framework.web.controller.BaseController;
import com.radebit.framework.web.domain.AjaxResult;
import com.radebit.common.utils.poi.ExcelUtil;
import com.radebit.framework.web.page.TableDataInfo;

/**
 * 摄像头分组Controller
 *
 * @author Rade
 * @date 2020-03-16
 */
@RestController
@RequestMapping("/helmetds/group")
public class HCameraGroupController extends BaseController {
    @Autowired
    private IHCameraGroupService hCameraGroupService;

    @Autowired
    private IHCameraListService hCameraListService;

    /**
     * 查询摄像头分组列表
     */
    @PreAuthorize("@ss.hasPermi('helmetds:group:list')")
    @GetMapping("/list")
    public TableDataInfo list(HCameraGroup hCameraGroup) {
        startPage();
        List<HCameraGroup> list = hCameraGroupService.selectHCameraGroupList(hCameraGroup);
        return getDataTable(list);
    }

    /**
     * 导出摄像头分组列表
     */
    @PreAuthorize("@ss.hasPermi('helmetds:group:export')")
    @Log(title = "摄像头分组", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(HCameraGroup hCameraGroup) {
        List<HCameraGroup> list = hCameraGroupService.selectHCameraGroupList(hCameraGroup);
        ExcelUtil<HCameraGroup> util = new ExcelUtil<HCameraGroup>(HCameraGroup.class);
        return util.exportExcel(list, "group");
    }

    /**
     * 获取摄像头分组详细信息
     */
    @PreAuthorize("@ss.hasPermi('helmetds:group:query')")
    @GetMapping(value = "/{groupId}")
    public AjaxResult getInfo(@PathVariable("groupId") Long groupId) {
        return AjaxResult.success(hCameraGroupService.selectHCameraGroupById(groupId));
    }

    /**
     * 新增摄像头分组
     */
    @PreAuthorize("@ss.hasPermi('helmetds:group:add')")
    @Log(title = "摄像头分组", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody HCameraGroup hCameraGroup) {
        return toAjax(hCameraGroupService.insertHCameraGroup(hCameraGroup));
    }

    /**
     * 修改摄像头分组
     */
    @PreAuthorize("@ss.hasPermi('helmetds:group:edit')")
    @Log(title = "摄像头分组", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody HCameraGroup hCameraGroup) {
        return toAjax(hCameraGroupService.updateHCameraGroup(hCameraGroup));
    }

    /**
     * 删除摄像头分组
     */
    @PreAuthorize("@ss.hasPermi('helmetds:group:remove')")
    @Log(title = "摄像头分组", businessType = BusinessType.DELETE)
    @DeleteMapping("/{groupIds}")
    public AjaxResult remove(@PathVariable Long[] groupIds) {
        //判断该分组下是否还有设备
        for (Long groupId : groupIds) {
            HCameraList hCameraList = new HCameraList();
            hCameraList.setGroupId(groupId);
            if (hCameraListService.selectHCameraListList(hCameraList) != null) {
                return AjaxResult.error("分组：" + hCameraGroupService.selectHCameraGroupById(groupId).getGroupName() + " 下,还存在设备，无法删除！");
            }
        }
        return toAjax(hCameraGroupService.deleteHCameraGroupByIds(groupIds));
    }
}
