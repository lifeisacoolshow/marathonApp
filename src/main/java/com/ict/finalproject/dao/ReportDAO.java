package com.ict.finalproject.dao;

import com.ict.finalproject.vo.ReportVO;

import java.util.List;

public interface ReportDAO {
    List<ReportVO> getReportsByUserCode(int usercode); // 사용자의 신고 내역 조회 메서드
    void updateReportStatus(ReportVO reportVO);
}
