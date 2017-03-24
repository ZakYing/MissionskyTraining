package com.missionsky.training.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;

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
	
	//获取所有视频类型
	@RequestMapping("/getAllVT")
	public void getAllVT(@RequestParam("flag")String flag,HttpServletResponse response) throws IOException
	{
		System.out.println(flag);
		List<VideoType> result=videoTypeDao.getAllVT();
//		for(VideoType vt:result)
//		{
//			System.out.println(vt.getVideoTypeName());
//		}
		
		 response.setContentType("text/html;charset=utf-8");    
		 JSONArray videoList=JSONArray.fromObject(result);
	
		 response.getWriter().print(videoList);
		
	}
}
