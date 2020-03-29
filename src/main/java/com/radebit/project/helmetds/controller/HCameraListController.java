package com.radebit.project.helmetds.controller;

import java.util.ArrayList;
import java.util.List;

import cn.hutool.core.lang.Assert;
import com.github.pagehelper.PageInfo;
import com.radebit.common.utils.SecurityUtils;
import com.radebit.project.helmetds.domain.vo.HCameraListVO;
import com.radebit.project.helmetds.service.IHCameraGroupService;
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
import com.radebit.project.helmetds.domain.HCameraList;
import com.radebit.project.helmetds.service.IHCameraListService;
import com.radebit.framework.web.controller.BaseController;
import com.radebit.framework.web.domain.AjaxResult;
import com.radebit.common.utils.poi.ExcelUtil;
import com.radebit.framework.web.page.TableDataInfo;

/**
 * 摄像头信息Controller
 * 
 * @author Rade
 * @date 2020-03-16
 */
@RestController
@RequestMapping("/helmetds/cameraList")
public class HCameraListController extends BaseController
{
    @Autowired
    private IHCameraListService hCameraListService;

    @Autowired
    private IHCameraGroupService hCameraGroupService;

    /**
     * 查询摄像头信息列表
     */
    @PreAuthorize("@ss.hasPermi('helmetds:cameraList:list')")
    @GetMapping("/list")
    public TableDataInfo list(HCameraList hCameraList)
    {
        startPage();
        List<HCameraList> hCameraLists = hCameraListService.selectHCameraListList(hCameraList);
        PageInfo pageResult = new PageInfo(hCameraLists);
        List<HCameraListVO> list = new ArrayList<>();
        for (HCameraList hCameraListTemp: hCameraListService.selectHCameraListList(hCameraList)){
            list.add(hCameraListService.PoToVo(hCameraListTemp));
        }
        TableDataInfo dataTable = getDataTable(list);
        dataTable.setTotal(pageResult.getTotal());
        return dataTable;
    }

    /**
     * 导出摄像头信息列表
     */
    @PreAuthorize("@ss.hasPermi('helmetds:cameraList:export')")
    @Log(title = "摄像头信息", businessType = BusinessType.EXPORT)
    @GetMapping("/export")
    public AjaxResult export(HCameraList hCameraList)
    {
        List<HCameraList> list = hCameraListService.selectHCameraListList(hCameraList);
        ExcelUtil<HCameraList> util = new ExcelUtil<HCameraList>(HCameraList.class);
        return util.exportExcel(list, "cameraList");
    }

    /**
     * 获取摄像头信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('helmetds:cameraList:query')")
    @GetMapping(value = "/{cameraId}")
    public AjaxResult getInfo(@PathVariable("cameraId") Long cameraId)
    {
        return AjaxResult.success(hCameraListService.selectHCameraListById(cameraId));
    }

    /**
     * 新增摄像头信息
     */
    @PreAuthorize("@ss.hasPermi('helmetds:cameraList:add')")
    @Log(title = "摄像头信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody HCameraList hCameraList)
    {
        //断言
        Assert.notNull(hCameraList.getCameraName(),"摄像头名称不能为空！");
        //判断分类是否为空
        if (hCameraGroupService.selectHCameraGroupById(hCameraList.getGroupId())==null){
            return AjaxResult.error("摄像头分类不存在！");
        }
        hCameraList.setFounder(SecurityUtils.getLoginUser().getUser().getUserId());
        return toAjax(hCameraListService.insertHCameraList(hCameraList));
    }

    /**
     * 修改摄像头信息
     */
    @PreAuthorize("@ss.hasPermi('helmetds:cameraList:edit')")
    @Log(title = "摄像头信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody HCameraList hCameraList)
    {
        if (hCameraList.getGroupId()!=null){
            //判断分类是否为空
            if (hCameraGroupService.selectHCameraGroupById(hCameraList.getGroupId())==null){
                return AjaxResult.error("摄像头分类不存在！");
            }
        }
        return toAjax(hCameraListService.updateHCameraList(hCameraList));
    }

    /**
     * 删除摄像头信息
     */
    @PreAuthorize("@ss.hasPermi('helmetds:cameraList:remove')")
    @Log(title = "摄像头信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{cameraIds}")
    public AjaxResult remove(@PathVariable Long[] cameraIds)
    {
        return toAjax(hCameraListService.deleteHCameraListByIds(cameraIds));
    }
}
