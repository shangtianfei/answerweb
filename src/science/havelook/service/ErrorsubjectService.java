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
    
 // 从session里面取出userinfo
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
			errorsubject.setErrorid(es.getErrorid());//区分更新与保存的重要信息
			errorsubjectDAO.merge(errorsubject);//更新错误信息
		}else{
			errorsubject.setErrordegree(degree);
			errorsubjectDAO.save(errorsubject);//保存错误信息
		}
	}
        /**
         * 查找该用户所有错题
         * @param userinfo 
         * @return
         */
		public List list(Userinfo userinfo) {
			return errorsubjectDAO.findByUserid(userinfo.getUserid());
		}
        /**
         * 查找单个错题
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
