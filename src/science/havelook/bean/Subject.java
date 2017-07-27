package science.havelook.bean;

import java.util.HashSet;
import java.util.Set;


/**
 * Subject entity. @author MyEclipse Persistence Tools
 */

public class Subject  implements java.io.Serializable {


    // Fields    

     private Long subjectid;
     private Allclass allclass;
     private String subjecttext;
     private String subjecta;
     private String subjectb;
     private String subjectc;
     private String subjectd;
     private String resulter;
     private Set errorsubjects = new HashSet(0);


    // Constructors

    /** default constructor */
    public Subject() {
    }

    
    /** full constructor */
    public Subject(Allclass allclass, String subjecttext, String subjecta, String subjectb, String subjectc, String subjectd, String resulter, Set errorsubjects) {
        this.allclass = allclass;
        this.subjecttext = subjecttext;
        this.subjecta = subjecta;
        this.subjectb = subjectb;
        this.subjectc = subjectc;
        this.subjectd = subjectd;
        this.resulter = resulter;
        this.errorsubjects = errorsubjects;
    }

   
    // Property accessors

    public Long getSubjectid() {
        return this.subjectid;
    }
    
    public void setSubjectid(Long subjectid) {
        this.subjectid = subjectid;
    }

    public Allclass getAllclass() {
        return this.allclass;
    }
    
    public void setAllclass(Allclass allclass) {
        this.allclass = allclass;
    }

    public String getSubjecttext() {
        return this.subjecttext;
    }
    
    public void setSubjecttext(String subjecttext) {
        this.subjecttext = subjecttext;
    }

    public String getSubjecta() {
        return this.subjecta;
    }
    
    public void setSubjecta(String subjecta) {
        this.subjecta = subjecta;
    }

    public String getSubjectb() {
        return this.subjectb;
    }
    
    public void setSubjectb(String subjectb) {
        this.subjectb = subjectb;
    }

    public String getSubjectc() {
        return this.subjectc;
    }
    
    public void setSubjectc(String subjectc) {
        this.subjectc = subjectc;
    }

    public String getSubjectd() {
        return this.subjectd;
    }
    
    public void setSubjectd(String subjectd) {
        this.subjectd = subjectd;
    }

    public String getResulter() {
        return this.resulter;
    }
    
    public void setResulter(String resulter) {
        this.resulter = resulter;
    }

    public Set getErrorsubjects() {
        return this.errorsubjects;
    }
    
    public void setErrorsubjects(Set errorsubjects) {
        this.errorsubjects = errorsubjects;
    }
   








}