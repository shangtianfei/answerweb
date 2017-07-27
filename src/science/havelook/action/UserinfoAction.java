package science.havelook.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;

import science.havelook.bean.Userinfo;
import science.havelook.service.UserinfoService;

public class UserinfoAction {
	@Autowired
	UserinfoService userinfoService;
	Userinfo userinfo;
	String checkregistername;
	

	public String getCheckregistername() {
		return checkregistername;
	}

	public void setCheckregistername(String checkregistername) {
		this.checkregistername = checkregistername;
	}

	public Userinfo getUserinfo() {
		return userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}
    /**
     * ��¼���
     * @return
     */
	public String login(){
		List list = userinfoService.login(userinfo);
		if(list.size()>0){
			//����¼����Ϣ����session
			Userinfo userinfo = (Userinfo) list.get(0);//��¼�˵���Ϣ
			ServletActionContext.getRequest().getSession().setAttribute("userinfo", userinfo);//��userinfo����Session
			return "success";
		}else{
			return "error";
		}
	}
	/**
	 * ע��
	 * @return
	 */
	public String register(){
		userinfoService.register(userinfo);
		return "success";
	}
	/**
     * ע����
     * @return
     */
	public void checkregistername() throws IOException {
		boolean um = userinfoService.findByUsername(checkregistername);
		PrintWriter out = ServletActionContext.getResponse().getWriter();
		if (um == false) {
			out.write("<b> error </b>");
		}
//		else if (um == true) {
//			out.write("<b> ture </b>");
//		}
		out.flush();
		out.close();
	}
	
	/**
	 * ע����¼ success
	 * @return
	 */
	public String logout(){
		ServletActionContext.getRequest().getSession().removeAttribute("userinfo");
		return "success";
	}
	/**
	 * �鿴�û�����
	 * @return  "success";
	 */
	public String userinfodatail(){
		
		return "success";
	}
}
