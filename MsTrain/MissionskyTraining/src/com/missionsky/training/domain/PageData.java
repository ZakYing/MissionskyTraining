package com.missionsky.training.domain;

/*页面参数类*/
public class PageData {
	
	private int start_index;
	private int end_index;
	public int getStart_index() {
		return start_index;
	}
	public void setStart_index(int startIndex) {
		start_index = startIndex;
	}
	public int getEnd_index() {
		return end_index;
	}
	public void setEnd_index(int endIndex) {
		end_index = endIndex;
	}
	public PageData() {
		super();
	}
	public PageData(int startIndex, int endIndex) {
		super();
		start_index = startIndex;
		end_index = endIndex;
	}

}
