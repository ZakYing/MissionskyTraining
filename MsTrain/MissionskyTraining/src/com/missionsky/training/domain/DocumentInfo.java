package com.missionsky.training.domain;

import java.io.Serializable;
import java.util.Date;

public class DocumentInfo implements Serializable{
	
	private int docId;
	private String docName;
	private String docSize;
	private java.util.Date uploadDate;
	private User user;
	
	public int getDocId() {
		return docId;
	}
	public void setDocId(int docId) {
		this.docId = docId;
	}
	public String getDocName() {
		return docName;
	}
	public void setDocName(String docName) {
		this.docName = docName;
	}
	public String getDocSize() {
		return docSize;
	}
	public void setDocSize(String docSize) {
		this.docSize = docSize;
	}
	public java.util.Date getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(java.util.Date uploadDate) {
		this.uploadDate = uploadDate;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public DocumentInfo() {
		super();
	}
	public DocumentInfo(String docName, String docSize, Date uploadDate,
			User user, int docId) {
		super();
		this.docName = docName;
		this.docSize = docSize;
		this.uploadDate = uploadDate;
		this.user = user;
		this.docId = docId;
	}

}
