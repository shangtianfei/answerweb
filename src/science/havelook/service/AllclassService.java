package science.havelook.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import science.havelook.bean.Allclass;
import science.havelook.dao.AllclassDAO;

public class AllclassService {
    @Autowired
	AllclassDAO allclassDAO;
	public List list() {
		return allclassDAO.findAll();
	}
	
	public Allclass findById(Long classid) {
		return allclassDAO.findById(classid);
	}

}
