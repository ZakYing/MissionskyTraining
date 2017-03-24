package com.missionsky.training.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.Time;
import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.missionsky.training.dao.VideoDao;
import com.missionsky.training.domain.Video;

@Controller
public class VideoController {

	@Autowired
	private VideoDao videoDao;
	
	//添加视频
	@RequestMapping("/addVideo")
	@Transactional
	public String addVideo(@RequestParam("VideoImg") CommonsMultipartFile VideoImg,@RequestParam("videoTypeId") int videoTypeId,@RequestParam("VideoFileName") String VideoFileName,@RequestParam("publishUser") String publishUser,@RequestParam("VideoURL") String VideoURL,HttpServletRequest request)
	{
		if(!VideoImg.isEmpty())
		{
			 String path=request.getRealPath("/videoImg");
			 File file=new File(path);
			 if(!file.exists())
				 file.mkdir();
			 
			 try {
					FileOutputStream fo=new FileOutputStream(path+"/"+VideoImg.getOriginalFilename());  
					InputStream is=VideoImg.getInputStream(); 
					int n=0;
					byte[] b=new byte[1024];
					while((n=is.read(b))!=-1)
					{
						fo.write(b);
					}
					fo.flush();
					is.close();
					fo.close();
					
				} catch (Exception e) {
					e.printStackTrace();
				}
		}
		
		Video video=new Video();
		video.setVideoTypeId(videoTypeId);
		video.setVideoFileName(VideoFileName);
		video.setPublishUser(publishUser);
		video.setVideoURL(VideoURL);
		if(!VideoImg.isEmpty())
		video.setVideoImg(VideoImg.getOriginalFilename());
		else
		video.setVideoImg("");
		Calendar now=Calendar.getInstance();
		video.setPublishDate(new Time(now.getTimeInMillis()));
		videoDao.addVideo(video);
		return "vt_operate";
		
	}
}
