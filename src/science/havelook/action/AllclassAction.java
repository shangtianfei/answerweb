package science.havelook.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import science.havelook.bean.Errorsubject;
import science.havelook.bean.Userinfo;
import science.havelook.service.AllclassService;
import science.havelook.service.ErrorsubjectService;

public class AllclassAction {
	@Autowired
	AllclassService allclassService;
	@Autowired
	ErrorsubjectService errorsubjectService;

	List allclassList;
	
	List allErrorsubject;

	public List getAllErrorsubject() {
		return allErrorsubject;
	}

	public void setAllErrorsubject(List allErrorsubject) {
		this.allErrorsubject = allErrorsubject;
	}

	public List getAllclassList() {
		return allclassList;
	}

	public void setAllclassList(List allclassList) {
		this.allclassList = allclassList;
	}
    /**
     * ��ȡ��Ŀlist�����list
     * @return
     */
	public String list(){
		allclassList = allclassService.list();//�������п�Ŀ
		 Userinfo userinfo = (Userinfo) ServletActionContext.getRequest()
					.getSession().getAttribute("userinfo");// ��session����ȡ��userinfo
		allErrorsubject = errorsubjectService.list(userinfo);//����userinfo���Ҷ�Ӧ�Ĵ�����Ŀ
		return "success";
	}
}
