package science.havelook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import science.havelook.bean.Userinfo;
import science.havelook.dao.UserinfoDAO;

public class UserinfoService {
    @Autowired
	UserinfoDAO userinfoDAO;
	public List login(Userinfo userinfo) {
		return userinfoDAO.findByExample(userinfo);	}
	public void register(Userinfo userinfo) {
		userinfoDAO.save(userinfo);
	}
	public boolean findByUsername(String checkuame) {
		return   userinfoDAO.findByUsername(checkuame);
	}
}
