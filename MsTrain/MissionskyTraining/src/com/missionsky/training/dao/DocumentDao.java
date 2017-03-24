package com.missionsky.training.dao;

import java.util.List;

import com.missionsky.training.domain.Document;
import com.missionsky.training.domain.DocumentInfo;
import com.missionsky.training.domain.PageData;

public interface DocumentDao {
	
	/*获取文档的总记录数*/
	public int getRowcount(); 
	/*分页查看文档信息列表*/
	public List<DocumentInfo> getDocsByPage(PageData pd);
	/*上传文档*/
	public void addDoc(Document doc);
	
}
