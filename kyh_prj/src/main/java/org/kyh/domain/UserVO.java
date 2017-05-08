package org.kyh.domain;

/**
 * @author kyh
 * @category 사용자 정보
 *
 */
public class UserVO {
	
	private String id;
	private String pwd;
	private String email;
	private String name;
	private String logindate;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLogindate() {
		return logindate;
	}
	public void setLogindate(String logindate) {
		this.logindate = logindate;
	}
	
	@Override
	public String toString() {
		return "UserVO [id=" + id + ", pwd=" + pwd + ", email=" + email + ", name=" + name + ", logindate=" + logindate
				+ "]";
	}
	

}
