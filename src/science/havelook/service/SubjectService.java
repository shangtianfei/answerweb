package science.havelook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import science.havelook.bean.Subject;
import science.havelook.dao.SubjectDAO;

public class SubjectService {
	@Autowired
	SubjectDAO subjectDAO;

	public List list(Long classid) {
		return subjectDAO.findByclassid(classid);
	}
    
	public Subject findById(Long subjectid){
		return subjectDAO.findById(subjectid);
	}
	/**
	 * ��У׼
	 * @param subjectid
	 * @param choice
	 * @return
	 */
	public boolean check(Long subjectid, String choice) {
		Subject sub = findById(subjectid);
		if (sub.getResulter().equals(choice)) {
			return true;
		} else {
			return false;
		}
	}
    /**
     * ģ����ѯ
     * @param searchContent
     * @return
     */
	public List searchlike(String searchContent) {
		// TODO Auto-generated method stub
		return subjectDAO.searchlike(searchContent);
	}
}
