package com.missionsky.training.domain;

import java.io.Serializable;
import java.util.Date;

public class Video implements Serializable{
	
	private int videoId;
	private int videoTypeId;
	private String VideoFileName;
	private java.util.Date publishDate;
	private String publishUser;
	private String VideoURL;
	private String VideoImg;
	
	public int getVideoId() {
		return videoId;
	}
	public void setVideoId(int videoId) {
		this.videoId = videoId;
	}
	public int getVideoTypeId() {
		return videoTypeId;
	}
	public void setVideoTypeId(int videoTypeId) {
		this.videoTypeId = videoTypeId;
	}
	public String getVideoFileName() {
		return VideoFileName;
	}
	public void setVideoFileName(String videoFileName) {
		VideoFileName = videoFileName;
	}
	public java.util.Date getPublishDate() {
		return publishDate;
	}
	public void setPublishDate(java.util.Date publishDate) {
		this.publishDate = publishDate;
	}
	public String getPublishUser() {
		return publishUser;
	}
	public void setPublishUser(String publishUser) {
		this.publishUser = publishUser;
	}
	public String getVideoURL() {
		return VideoURL;
	}
	public void setVideoURL(String videoURL) {
		VideoURL = videoURL;
	}
	public String getVideoImg() {
		return VideoImg;
	}
	public void setVideoImg(String videoImg) {
		VideoImg = videoImg;
	}
	public Video() {
		super();
	}
	public Video(int videoId, int videoTypeId, String videoFileName,
			Date publishDate, String publishUser, String videoURL,
			String videoImg) {
		super();
		this.videoId = videoId;
		this.videoTypeId = videoTypeId;
		VideoFileName = videoFileName;
		this.publishDate = publishDate;
		this.publishUser = publishUser;
		VideoURL = videoURL;
		VideoImg = videoImg;
	}
	
}
