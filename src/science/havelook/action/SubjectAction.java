package science.havelook.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import science.havelook.bean.Allclass;
import science.havelook.bean.Errorsubject;
import science.havelook.bean.Subject;
import science.havelook.bean.Userinfo;
import science.havelook.service.AllclassService;
import science.havelook.service.ErrorsubjectService;
import science.havelook.service.SubjectService;
import science.havelook.utils.Utils;

public class SubjectAction {
	@Autowired
    Utils utils;
	@Autowired
	SubjectService subjectService;
	@Autowired
	AllclassService allclassService;
	@Autowired
	ErrorsubjectService errorsubjectService;

	String searchContent;

	List allSubject;

	Allclass allclass;

	String choice;

	Long subjectid;

	Long checkid;

	Long classid;

	Errorsubject errorsubject;

	Userinfo userinfo;

	Subject subject;

	public String getSearchContent() {
		return searchContent;
	}

	public void setSearchContent(String searchContent) {
		this.searchContent = searchContent;
	}

	public Long getClassid() {
		return classid;
	}

	public void setClassid(Long classid) {
		this.classid = classid;
	}

	public Long getCheckid() {
		return checkid;
	}

	public void setCheckid(Long checkid) {
		this.checkid = checkid;
	}

	public Userinfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	public Errorsubject getErrorsubject() {
		return errorsubject;
	}

	public void setErrorsubject(Errorsubject errorsubject) {
		this.errorsubject = errorsubject;
	}

	public Subject getSubject() {
		return subject;
	}

	public void setSubject(Subject subject) {
		this.subject = subject;
	}

	public Long getSubjectid() {
		return subjectid;
	}

	public void setSubjectid(Long subjectid) {
		this.subjectid = subjectid;
	}

	public String getChoice() {
		return choice;
	}

	public void setChoice(String choice) {
		this.choice = choice;
	}

	public Allclass getAllclass() {
		return allclass;
	}

	public void setAllclass(Allclass allclass) {
		this.allclass = allclass;
	}

	public List getAllSubject() {
		return allSubject;
	}

	public void setAllSubject(List allSubject) {
		this.allSubject = allSubject;
	}

	/**
	 * 取出题目并填装到allSubject（List） 同时取出并组装成json
	 * 
	 * @return
	 * @throws IOException
	 */
	public void list() throws IOException {
		allSubject = subjectService.list(classid);
		utils.subjectJson(allSubject);
	}

	/**
	 * 答案检测
	 * 
	 * @throws IOException
	 */
	public void check() throws IOException {

		PrintWriter out = ServletActionContext.getResponse().getWriter();
		String outputstr = "";
		boolean result = subjectService.check(subjectid, choice);
		if (result) {
			errorsubjectService.deleteErrorSubject(subjectid);
			outputstr = "success";

		} else {
			errorsubjectService.errorsubjectSaveOrUpdate(subjectid);
			outputstr = "error>>正确答案是："
					+ subjectService.findById(subjectid).getResulter();
		}
		// 强制刷新
		out.write(outputstr);
		out.flush();
		out.close();
	}

	/**
	 * 根据subjectid查询错题所有信息
	 * 
	 * @throws IOException
	 */
	public void onetitle() throws IOException  {
		subject = subjectService.findById(subjectid);
		utils.subjectJson(subject);
	}


	/**
	 * 进行模糊搜索提示
	 * @throws IOException 
	 */
	public void searchlike() throws IOException {
		System.out.println(searchContent);
		allSubject = subjectService.searchlike(searchContent);
		utils.subjectJson(allSubject);
	}
}
