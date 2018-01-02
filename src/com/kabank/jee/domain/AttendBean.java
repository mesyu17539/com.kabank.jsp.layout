package com.kabank.jee.domain;

public class AttendBean {
	private String id, name, attend;
	
	@Override
	public String toString() {
		return "출결정보 [id=" + id + ", 이름=" + name + ", 출결 상태=" + attend + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAttend() {
		return attend;
	}

	public void setAttend(String attend) {
		this.attend = attend;
	}
}
