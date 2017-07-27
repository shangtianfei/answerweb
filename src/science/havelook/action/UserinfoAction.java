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
     * 登录检测
     * @return
     */
	public String login(){
		List list = userinfoService.login(userinfo);
		if(list.size()>0){
			//将登录人信息放入session
			Userinfo userinfo = (Userinfo) list.get(0);//登录人的信息
			ServletActionContext.getRequest().getSession().setAttribute("userinfo", userinfo);//把userinfo存入Session
			return "success";
		}else{
			return "error";
		}
	}
	/**
	 * 注册
	 * @return
	 */
	public String register(){
		userinfoService.register(userinfo);
		return "success";
	}
	/**
     * 注册检测
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
	 * 注销登录 success
	 * @return
	 */
	public String logout(){
		ServletActionContext.getRequest().getSession().removeAttribute("userinfo");
		return "success";
	}
	/**
	 * 查看用户详情
	 * @return  "success";
	 */
	public String userinfodatail(){
		
		return "success";
	}
}
