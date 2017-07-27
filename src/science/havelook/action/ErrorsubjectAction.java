package science.havelook.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import science.havelook.bean.Userinfo;
import science.havelook.service.ErrorsubjectService;
import science.havelook.service.SubjectService;

public class ErrorsubjectAction {
	@Autowired
	ErrorsubjectService errorsubjectService;
	@Autowired
	SubjectService subjectService;
	
	Userinfo userinfo;
	
	List allSubject;
	
    public Userinfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	public List getAllSubject() {
		return allSubject;
	}

	public void setAllSubject(List allSubject) {
		this.allSubject = allSubject;
	}

	/**
     * 根据userinfo.getUserid()查找错题编号包装成list然后进题库查询
     * @return
     */
	public String errorList(){
		allSubject = errorsubjectService.errorList(userinfo.getUserid());
		return "success";
	}
}
