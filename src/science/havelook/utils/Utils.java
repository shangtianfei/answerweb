package science.havelook.utils;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

import org.apache.struts2.ServletActionContext;

public class Utils {
	  /**
     * 封装json共用，自动识别list,针对subject
     * @param object
     * @throws IOException
     */
	public void subjectJson(Object object) throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse();
		/* 设置格式为text/json */
		response.setContentType("text/json");
		/* 设置字符集为'UTF-8' */
		response.setCharacterEncoding("UTF-8");

		PrintWriter out = ServletActionContext.getResponse().getWriter();

		JsonConfig config = new JsonConfig();
		config.setExcludes(new String[] { "allclass", "errorsubjects" });// 除去allclass，errorsubjects属性，否则不能组装成json
		String json;
		if(object instanceof List){
			json = JSONArray.fromObject(object, config).toString();//JSONArray对list的装换
		}else{
			json = JSONObject.fromObject(object, config).toString();// JSONObject单个对象的装换
		}
		// 强制刷新
		out.write(json);
		out.flush();
		out.close();
	}
}
