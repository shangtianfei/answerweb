package science.havelook.bean;

/**
 * Userinfo entity. @author MyEclipse Persistence Tools
 */

public class Userinfo implements java.io.Serializable {

	// Fields

	private Long userid;
	private String uame;
	private String upsw;
	private String urealname;

	// Constructors

	/** default constructor */
	public Userinfo() {
	}

	/** full constructor */
	public Userinfo(String uame, String upsw, String urealname) {
		this.uame = uame;
		this.upsw = upsw;
		this.urealname = urealname;
	}

	// Property accessors

	public Long getUserid() {
		return this.userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public String getUame() {
		return this.uame;
	}

	public void setUame(String uame) {
		this.uame = uame;
	}

	public String getUpsw() {
		return this.upsw;
	}

	public void setUpsw(String upsw) {
		this.upsw = upsw;
	}

	public String getUrealname() {
		return this.urealname;
	}

	public void setUrealname(String urealname) {
		this.urealname = urealname;
	}

}