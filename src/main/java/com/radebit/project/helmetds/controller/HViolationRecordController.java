package com.radebit.project.helmetds.controller;

import java.util.ArrayList;
import java.util.List;

import com.radebit.project.helmetds.domain.vo.HViolationRecordVO;
import com.radebit.project.helmetds.service.IHCameraListService;
import com.radebit.project.helmetds.service.IHUserInfoService;
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
import com.radebit.project.helmetds.domain.HViolationRecord;
import com.radebit.project.helmetds.service.IHViolationRecordService;
import com.radebit.framework.web.controller.BaseController;
import com.radebit.framework.web.domain.AjaxResult;
import com.radebit.common.utils.poi.ExcelUtil;
import com.radebit.framework.web.page.TableDataInfo;

/**
 * 安全违规记录Controller
 * 
 * @author Rade
 * @date 2020-03-16
 */
@RestController
@RequestMapping("/helmetds/violationRecord")
public class HViolationRecordController extends BaseController
{
    @Autowired
    private IHViolationRecordService hViolationRecordService;

    @Autowired
    private IHCameraListService hCameraListService;

    @Autowired
    private IHUserInfoService hUserInfoService;

    /**
     * 查询安全违规记录列表
     */
    @PreAuthorize("@ss.hasPermi('helmetds:violationRecord:list')")
    @GetMapping("/list")
    public TableDataInfo list(HViolationRecord hViolationRecord)
    {
        startPage();
        List<HViolationRecordVO> list = new ArrayList<>();
        for (HViolationRecord hViolationRecordTemp:hViolationRecordService.selectHViolationRecordList(hViolationRecord)){
            list.add(hViolationRecordService.PoToVo(hViolationRecordTemp));
        }
        return getDataTable(list);
    }

    /**
     * 导出安全违规记录列表
     */
    @PreAuthorize("@ss.hasPermi('helmetds:violationRecord:export')")
    @Log(title = "安全违规记录", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(HViolationRecord hViolationRecord)
    {
        List<HViolationRecord> list = hViolationRecordService.selectHViolationRecordList(hViolationRecord);
        ExcelUtil<HViolationRecord> util = new ExcelUtil<HViolationRecord>(HViolationRecord.class);
        return util.exportExcel(list, "violationRecord");
    }

    /**
     * 获取安全违规记录详细信息
     */
    @PreAuthorize("@ss.hasPermi('helmetds:violationRecord:query')")
    @GetMapping(value = "/{violationId}")
    public AjaxResult getInfo(@PathVariable("violationId") Long violationId)
    {
        return AjaxResult.success(hViolationRecordService.selectHViolationRecordById(violationId));
    }

    /**
     * 新增安全违规记录
     */
    @PreAuthorize("@ss.hasPermi('helmetds:violationRecord:add')")
    @Log(title = "安全违规记录", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody HViolationRecord hViolationRecord)
    {
        //判断用户是否存在
        if (hUserInfoService.selectHUserInfoById(hViolationRecord.getUserId())==null){
            return AjaxResult.error("用户不存在！");
        }
        //判断设备是否存
        if (hCameraListService.selectHCameraListById(hViolationRecord.getCameraId())==null){
            return AjaxResult.error("摄像头设备不存在！");
        }
        return toAjax(hViolationRecordService.insertHViolationRecord(hViolationRecord));
    }

    /**
     * 修改安全违规记录 一般只能修改状态
     */
    @PreAuthorize("@ss.hasPermi('helmetds:violationRecord:edit')")
    @Log(title = "安全违规记录", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody HViolationRecord hViolationRecord)
    {
        return toAjax(hViolationRecordService.updateHViolationRecord(hViolationRecord));
    }

    /**
     * 删除安全违规记录
     */
    @PreAuthorize("@ss.hasPermi('helmetds:violationRecord:remove')")
    @Log(title = "安全违规记录", businessType = BusinessType.DELETE)
	@DeleteMapping("/{violationIds}")
    public AjaxResult remove(@PathVariable Long[] violationIds)
    {
        return toAjax(hViolationRecordService.deleteHViolationRecordByIds(violationIds));
    }
}
