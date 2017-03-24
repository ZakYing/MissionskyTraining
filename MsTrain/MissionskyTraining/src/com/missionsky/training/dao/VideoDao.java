package com.missionsky.training.dao;

import java.util.List;

import com.missionsky.training.domain.PageData;
import com.missionsky.training.domain.Video;

public interface VideoDao {
	
	/*添加视频*/
	public void addVideo(Video video);
	/*获取视频的总记录数*/
	public int getRowcount(int videoTypeId); 
	//视频分页查询
    public List<Video> getVideosByPage(PageData pd);
}
