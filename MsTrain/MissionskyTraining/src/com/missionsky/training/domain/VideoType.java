package com.missionsky.training.domain;

import java.io.Serializable;

public class VideoType implements Serializable{
	
	private int videoTypeId;
	private String videoTypeName;
	public int getVideoTypeId() {
		return videoTypeId;
	}
	public void setVideoTypeId(int videoTypeId) {
		this.videoTypeId = videoTypeId;
	}
	public String getVideoTypeName() {
		return videoTypeName;
	}
	public void setVideoTypeName(String videoTypeName) {
		this.videoTypeName = videoTypeName;
	}
	public VideoType() {
		super();
	}
	public VideoType(int videoTypeId, String videoTypeName) {
		super();
		this.videoTypeId = videoTypeId;
		this.videoTypeName = videoTypeName;
	}

}
