package com.missionsky.training.dao;

import java.util.List;

import com.missionsky.training.domain.VideoType;

public interface VideoTypeDao {

	/*添加视频分类*/
	public void addVT(VideoType vt);
	/*获取所有视频类型*/
	public List<VideoType> getAllVT();
	
}
