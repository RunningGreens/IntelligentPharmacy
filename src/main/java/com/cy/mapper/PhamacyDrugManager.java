package com.cy.mapper;import com.cy.bean.PhamacyDrug;import org.springframework.stereotype.Repository;import java.util.List;import java.util.Map;@Repositorypublic interface PhamacyDrugManager {    public List<PhamacyDrug> selectAllPhamacyDrug(Map<String, Object> map);    public int delectPhamacyDrug(int pharmacyId);}