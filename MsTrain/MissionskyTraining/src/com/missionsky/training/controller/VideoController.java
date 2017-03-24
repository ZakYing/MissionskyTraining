package com.missionsky.training.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.Time;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.missionsky.training.dao.VideoDao;
import com.missionsky.training.domain.DocumentInfo;
import com.missionsky.training.domain.PageData;
import com.missionsky.training.domain.Video;
import com.missionsky.training.util.GetPageIndex;

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
	
	//视频分页查询
	@RequestMapping("/getVideosByPage")
	public String getVideosByPage(@RequestParam("videoTypeId") int videoTypeId,@RequestParam("pageIndex") int pageIndex,Model model)
	{
		 int rowCount=videoDao.getRowcount(videoTypeId);
	   	 int pageCount=(rowCount-1)/10+1;
	   	 PageData pd=GetPageIndex.getData(pageIndex, 10);
	   	 pd.setVideoTypeId(videoTypeId);
	   	 
	   	 List<Video> result=videoDao.getVideosByPage(pd);
	   	
	   	 model.addAttribute("result", result);
	   	 model.addAttribute("pageIndex", pageIndex);
	   	 model.addAttribute("rowCount", rowCount);
	   	 model.addAttribute("pageCount", pageCount);
	   	 
//	   	System.out.println(rowCount);
//	   	System.out.println(pageCount);
//	   	 for(Video v:result)
//	   	 {
//	   		 System.out.println(v.getVideoFileName()+" "+v.getPublishDate());
//	   	 }
//	   	 
		
		return "vt_operate";
		
	}
}
