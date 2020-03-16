package com.radebit.project.helmetds.mapper;

import java.util.List;
import com.radebit.project.helmetds.domain.HViolationRecord;

/**
 * 安全违规记录Mapper接口
 * 
 * @author Rade
 * @date 2020-03-16
 */
public interface HViolationRecordMapper 
{
    /**
     * 查询安全违规记录
     * 
     * @param violationId 安全违规记录ID
     * @return 安全违规记录
     */
    public HViolationRecord selectHViolationRecordById(Long violationId);

    /**
     * 查询安全违规记录列表
     * 
     * @param hViolationRecord 安全违规记录
     * @return 安全违规记录集合
     */
    public List<HViolationRecord> selectHViolationRecordList(HViolationRecord hViolationRecord);

    /**
     * 新增安全违规记录
     * 
     * @param hViolationRecord 安全违规记录
     * @return 结果
     */
    public int insertHViolationRecord(HViolationRecord hViolationRecord);

    /**
     * 修改安全违规记录
     * 
     * @param hViolationRecord 安全违规记录
     * @return 结果
     */
    public int updateHViolationRecord(HViolationRecord hViolationRecord);

    /**
     * 删除安全违规记录
     * 
     * @param violationId 安全违规记录ID
     * @return 结果
     */
    public int deleteHViolationRecordById(Long violationId);

    /**
     * 批量删除安全违规记录
     * 
     * @param violationIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteHViolationRecordByIds(Long[] violationIds);
}
