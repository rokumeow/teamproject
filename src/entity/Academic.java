package entity;

import java.util.Set;

public class Academic {
	private String account;
	private String name;
	//primary key is name
	private String password;
	private String email;
	private String IsYear;
	
	private Set<Module> modules;
	
	public Academic() {
		// TODO Auto-generated constructor stub
	}
	
	public Set<Module> getModules() {
		return modules;
	}
	public void setModules(Set<Module> modules) {
		this.modules = modules;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getIsYear(){return IsYear;}
	public void setIsYear(String IsYear){this.IsYear = IsYear;}
	
	@Override
	public String toString() {
	return "Account="+this.account+",name="+this.name+",email="+this.email;
	}
}
