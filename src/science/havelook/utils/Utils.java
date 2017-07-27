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
     * ��װjson���ã��Զ�ʶ��list,���subject
     * @param object
     * @throws IOException
     */
	public void subjectJson(Object object) throws IOException {
		HttpServletResponse response = ServletActionContext.getResponse();
		/* ���ø�ʽΪtext/json */
		response.setContentType("text/json");
		/* �����ַ���Ϊ'UTF-8' */
		response.setCharacterEncoding("UTF-8");

		PrintWriter out = ServletActionContext.getResponse().getWriter();

		JsonConfig config = new JsonConfig();
		config.setExcludes(new String[] { "allclass", "errorsubjects" });// ��ȥallclass��errorsubjects���ԣ���������װ��json
		String json;
		if(object instanceof List){
			json = JSONArray.fromObject(object, config).toString();//JSONArray��list��װ��
		}else{
			json = JSONObject.fromObject(object, config).toString();// JSONObject���������װ��
		}
		// ǿ��ˢ��
		out.write(json);
		out.flush();
		out.close();
	}
}
