package science.havelook.service;

import java.util.Date;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import science.havelook.bean.Errorsubject;
import science.havelook.bean.Subject;
import science.havelook.bean.Userinfo;
import science.havelook.dao.ErrorsubjectDAO;

public class ErrorsubjectService {
    @Autowired
	ErrorsubjectDAO errorsubjectDAO;
    
 // ��session����ȡ��userinfo
    Userinfo userinfo = (Userinfo) ServletActionContext.getRequest()
			.getSession().getAttribute("userinfo");
	public void save(Errorsubject errorsubject) {
		errorsubjectDAO.save(errorsubject);
	}

	public void errorsubjectSaveOrUpdate(Long subjectid) {
		Errorsubject errorsubject = new Errorsubject();

		errorsubject.setUserinfo(userinfo);
		
		Subject sb = new Subject();
		sb.setSubjectid(subjectid);
		errorsubject.setSubject(sb);
		long userid = userinfo.getUserid();
		List<Errorsubject> list =  errorsubjectDAO.findByUidSid(userid,subjectid);
		errorsubject.setErrordate(new Date());
		long degree = 1;
		if(list.size() > 0){
			Errorsubject es = (Errorsubject) list.get(0);
			degree = es.getErrordegree();
			degree = degree+1;
			errorsubject.setErrordegree(degree++);
			errorsubject.setErrorid(es.getErrorid());//���ָ����뱣�����Ҫ��Ϣ
			errorsubjectDAO.merge(errorsubject);//���´�����Ϣ
		}else{
			errorsubject.setErrordegree(degree);
			errorsubjectDAO.save(errorsubject);//���������Ϣ
		}
	}
        /**
         * ���Ҹ��û����д���
         * @param userinfo 
         * @return
         */
		public List list(Userinfo userinfo) {
			return errorsubjectDAO.findByUserid(userinfo.getUserid());
		}
        /**
         * ���ҵ�������
         * @param errorid
         * @return
         */
		public Errorsubject findById(Long errorid) {
			return errorsubjectDAO.findById(errorid);
		}

		public List errorList(Long userid) {
			return errorsubjectDAO.findByUserid(userid);
		}

		public void deleteErrorSubject(Long subjectid) {
			errorsubjectDAO.deleteBySubjectid(subjectid);
		}
}
