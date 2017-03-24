package com.missionsky.training.domain;

import java.io.Serializable;
import java.util.Date;

public class Document implements Serializable{
	
	private int docId;
	private String docName;
	private String docSize;
	private java.util.Date uploadDate;
	private int uploadUser;
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
	public int getuploadUser() {
		return uploadUser;
	}
	public void setuploadUser(int uploadUser) {
		this.uploadUser = uploadUser;
	}
	public Document() {
		super();
	}
	public Document(int docId, String docName, String docSize, Date uploadDate,
			int uploadUser) {
		super();
		this.docId = docId;
		this.docName = docName;
		this.docSize = docSize;
		this.uploadDate = uploadDate;
		this.uploadUser = uploadUser;
	}
	

}
