package science.havelook.bean;

import java.util.Date;

/**
 * Errorsubject entity. @author MyEclipse Persistence Tools
 */

public class Errorsubject implements java.io.Serializable {

	// Fields

	private Long errorid;
	private Userinfo userinfo;
	private Subject subject;
	private Date errordate;
	private Long errordegree;

	// Constructors

	/** default constructor */
	public Errorsubject() {
	}

	/** minimal constructor */
	public Errorsubject(Userinfo userinfo, Subject subject) {
		this.userinfo = userinfo;
		this.subject = subject;
	}

	/** full constructor */
	public Errorsubject(Userinfo userinfo, Subject subject, Date errordate,
			Long errordegree) {
		this.userinfo = userinfo;
		this.subject = subject;
		this.errordate = errordate;
		this.errordegree = errordegree;
	}

	// Property accessors

	public Long getErrorid() {
		return this.errorid;
	}

	public void setErrorid(Long errorid) {
		this.errorid = errorid;
	}

	public Userinfo getUserinfo() {
		return this.userinfo;
	}

	public void setUserinfo(Userinfo userinfo) {
		this.userinfo = userinfo;
	}

	public Subject getSubject() {
		return this.subject;
	}

	public void setSubject(Subject subject) {
		this.subject = subject;
	}

	public Date getErrordate() {
		return this.errordate;
	}

	public void setErrordate(Date errordate) {
		this.errordate = errordate;
	}

	public Long getErrordegree() {
		return this.errordegree;
	}

	public void setErrordegree(Long errordegree) {
		this.errordegree = errordegree;
	}

}