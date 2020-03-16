package com.radebit.project.helmetds.service.impl;

import java.util.List;
import com.radebit.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.radebit.project.helmetds.mapper.HViolationRecordMapper;
import com.radebit.project.helmetds.domain.HViolationRecord;
import com.radebit.project.helmetds.service.IHViolationRecordService;

/**
 * 安全违规记录Service业务层处理
 * 
 * @author Rade
 * @date 2020-03-16
 */
@Service
public class HViolationRecordServiceImpl implements IHViolationRecordService 
{
    @Autowired
    private HViolationRecordMapper hViolationRecordMapper;

    /**
     * 查询安全违规记录
     * 
     * @param violationId 安全违规记录ID
     * @return 安全违规记录
     */
    @Override
    public HViolationRecord selectHViolationRecordById(Long violationId)
    {
        return hViolationRecordMapper.selectHViolationRecordById(violationId);
    }

    /**
     * 查询安全违规记录列表
     * 
     * @param hViolationRecord 安全违规记录
     * @return 安全违规记录
     */
    @Override
    public List<HViolationRecord> selectHViolationRecordList(HViolationRecord hViolationRecord)
    {
        return hViolationRecordMapper.selectHViolationRecordList(hViolationRecord);
    }

    /**
     * 新增安全违规记录
     * 
     * @param hViolationRecord 安全违规记录
     * @return 结果
     */
    @Override
    public int insertHViolationRecord(HViolationRecord hViolationRecord)
    {
        hViolationRecord.setCreateTime(DateUtils.getNowDate());
        return hViolationRecordMapper.insertHViolationRecord(hViolationRecord);
    }

    /**
     * 修改安全违规记录
     * 
     * @param hViolationRecord 安全违规记录
     * @return 结果
     */
    @Override
    public int updateHViolationRecord(HViolationRecord hViolationRecord)
    {
        return hViolationRecordMapper.updateHViolationRecord(hViolationRecord);
    }

    /**
     * 批量删除安全违规记录
     * 
     * @param violationIds 需要删除的安全违规记录ID
     * @return 结果
     */
    @Override
    public int deleteHViolationRecordByIds(Long[] violationIds)
    {
        return hViolationRecordMapper.deleteHViolationRecordByIds(violationIds);
    }

    /**
     * 删除安全违规记录信息
     * 
     * @param violationId 安全违规记录ID
     * @return 结果
     */
    @Override
    public int deleteHViolationRecordById(Long violationId)
    {
        return hViolationRecordMapper.deleteHViolationRecordById(violationId);
    }
}
