package com.internousdev.earth.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.earth.dao.UserInfoDAO;
import com.internousdev.earth.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;

public class MyPageAction extends ActionSupport implements SessionAware {
	private String familyName;
	private String firstName;
	private String familyNameKana;
	private String firstNameKana;
	private int sex;
	private String email;
	public Map<String, Object> session;
	private String message;

	public String execute() {
		// タイムアウトのチェック
		if (session.isEmpty()) {
			return "sessionTimeout";
		}
		try {
			UserInfoDAO userInfoDAO = new UserInfoDAO();
			UserInfoDTO userInfoDTO = new UserInfoDTO();
			userInfoDTO = userInfoDAO.getUserInfo((session.get("loginuserid").toString()));
			familyName = userInfoDTO.getFamilyName();
			firstName = userInfoDTO.getFirstName();
			familyNameKana = userInfoDTO.getFamilyNameKana();
			firstNameKana = userInfoDTO.getFirstNameKana();
			sex = userInfoDTO.getSex();
			email = userInfoDTO.getEmail();
		} catch (Exception e) {
			e.printStackTrace();
			return "sessionTimeout";

		}
		return SUCCESS;
	}

	public String getFamilyName() {
		return familyName;
	}

	public void setFamilyName(String familyName) {
		this.familyName = familyName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getFamilyNameKana() {
		return familyNameKana;
	}

	public void setFamilyNameKana(String familyNameKana) {
		this.familyNameKana = familyNameKana;
	}

	public String getFirstNameKana() {
		return firstNameKana;
	}

	public void setFirstNameKana(String firstNameKana) {
		this.firstNameKana = firstNameKana;
	}

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
}