package science.havelook.bean;

import java.util.HashSet;
import java.util.Set;

/**
 * Allclass entity. @author MyEclipse Persistence Tools
 */

public class Allclass implements java.io.Serializable {

	// Fields

	private Long classid;
	private String classname;
	private Set subjects = new HashSet(0);

	// Constructors

	/** default constructor */
	public Allclass() {
	}

	/** minimal constructor */
	public Allclass(String classname) {
		this.classname = classname;
	}

	/** full constructor */
	public Allclass(String classname, Set subjects) {
		this.classname = classname;
		this.subjects = subjects;
	}

	// Property accessors

	public Long getClassid() {
		return this.classid;
	}

	public void setClassid(Long classid) {
		this.classid = classid;
	}

	public String getClassname() {
		return this.classname;
	}

	public void setClassname(String classname) {
		this.classname = classname;
	}

	public Set getSubjects() {
		return this.subjects;
	}

	public void setSubjects(Set subjects) {
		this.subjects = subjects;
	}

}