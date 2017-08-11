package com.gms.web.domain;

import java.io.Serializable;

public class MemberBean implements Serializable{
	private static final long serialVersionUID = 1L;
	private String id, pwd, name, ssn, regdate, email, major, subject, phone, profile;
	
	
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMajor() {
		return major;
	}
	public void setMajor(String major) {
		this.major = major;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getRegdate() {
	return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public void setId(String id){
		this.id = id;
	}
	public void setPwd(String pwd){
		this.pwd = pwd;
	}
	public void setSsn(String ssn){
		this.ssn = ssn;
	}
	public void setName(String name){
		this.name = name;
	}
	//get
	public String getId(){
		return this.id;
	}
	public String getPwd(){
		return this.pwd;
	}
	public String getSsn(){
		return this.ssn;
	}
	public String getName(){
		return this.name;
	}
	
	public String toString(){
		return "id: "+id+"\n"+
				"이름: "+name+"\n"+
				"비밀번호: "+pwd+"\n"+
				regdate+"\n"+
				"--------------------------\n";
	}

}
