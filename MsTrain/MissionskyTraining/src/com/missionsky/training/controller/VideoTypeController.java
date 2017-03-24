package com.missionsky.training.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.missionsky.training.dao.VideoTypeDao;
import com.missionsky.training.domain.VideoType;

@Controller
public class VideoTypeController {

	@Autowired
	private VideoTypeDao videoTypeDao;
	
	//添加视频分类
	@RequestMapping("/addVT")
	public String addVT(@RequestParam("videoTypeName")String videoTypeName)
	{
		VideoType vt=new VideoType();
		vt.setVideoTypeName(videoTypeName);
		videoTypeDao.addVT(vt);
		return "vt_operate";
	}
}
