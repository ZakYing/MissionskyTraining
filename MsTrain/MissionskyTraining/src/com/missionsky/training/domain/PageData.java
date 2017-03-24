package com.missionsky.training.domain;

/*页面参数封装类*/
public class PageData {
	
	private int start_index;
	private int end_index;
	private int videoTypeId;
	
	public int getStart_index() {
		return start_index;
	}
	public void setStart_index(int start_index) {
		this.start_index = start_index;
	}
	public int getEnd_index() {
		return end_index;
	}
	public void setEnd_index(int end_index) {
		this.end_index = end_index;
	}
	public int getVideoTypeId() {
		return videoTypeId;
	}
	public void setVideoTypeId(int videoTypeId) {
		this.videoTypeId = videoTypeId;
	}
	public PageData() {
		super();
	}
	
}
