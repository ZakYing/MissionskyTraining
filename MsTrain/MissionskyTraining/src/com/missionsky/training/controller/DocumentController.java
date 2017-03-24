package com.missionsky.training.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.sql.Time;
import java.util.Calendar;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.missionsky.training.dao.DocumentDao;
import com.missionsky.training.domain.Document;
import com.missionsky.training.domain.DocumentInfo;
import com.missionsky.training.domain.PageData;
import com.missionsky.training.domain.User;
import com.missionsky.training.util.ByteSwitchUtil;
import com.missionsky.training.util.GetPageIndex;

@Controller
public class DocumentController {
	
	@Autowired
	private DocumentDao documentDao;

	//进入文档操作页面(分页查询,设置每页显示5条记录，首次进入默认pageIndex=1)
	@RequestMapping("/doc_op")
	public String to_doc_op(@RequestParam("pageIndex")int pageIndex,Model model)
	{	
		 int rowCount=documentDao.getRowcount();
	   	 int pageCount=(rowCount-1)/5+1;
	   	 PageData pd=GetPageIndex.getData(pageIndex, 5);
	   	 
	   	 List<DocumentInfo> result=documentDao.getDocsByPage(pd);
	   	
	   	 model.addAttribute("result", result);
	   	 model.addAttribute("pageIndex", pageIndex);
	   	 model.addAttribute("rowCount", rowCount);
	   	 model.addAttribute("pageCount", pageCount);
	   	 
		
		return "doc_operate";
	}
	
	//上传文档
	@RequestMapping("/doc_upload")
	@Transactional
	public String doc_upload(@RequestParam("doc") CommonsMultipartFile doc,@RequestParam("pageIndex")int pageIndex,Model model,HttpServletRequest request)
	{
		if(!doc.isEmpty())
		{
			//获得服务器下doc文件夹路径
			String path=request.getRealPath("/doc");
			 File file=new File(path);
			 if(!file.exists())
				 file.mkdir();
			 
			try {
				FileOutputStream fo=new FileOutputStream(path+"/"+doc.getOriginalFilename());
				InputStream is=doc.getInputStream(); 
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
			
			Document d=new Document();
			User user=(User) request.getSession().getAttribute("user");
		    Calendar now=Calendar.getInstance();
			d.setDocName(doc.getOriginalFilename());
			d.setDocSize(ByteSwitchUtil.getPrintSize(doc.getSize()));
		    d.setUploadDate(new Time(now.getTimeInMillis()));
			d.setuploadUser(user.getUserId());
			documentDao.addDoc(d);
		}
		
		//文件上传成功，并同步数据到数据库成功,最后完成页面回发
		String res=to_doc_op(pageIndex,model);
		
		return res;
	}
	
	
	//下载文档
	@RequestMapping("/doc_download")
	public String doc_download(@RequestParam("docName") String docName,@RequestParam("pageIndex")int pageIndex,Model model,HttpServletRequest request)
	{
		//path_download为PC机默认downloads文件夹路径,path_from为需要下载的文件在服务器下的路径
		String path_from=request.getRealPath("/doc")+"/"+docName;
		//获取计算机用户名
		Map<String, String> map = System.getenv();
		// 获取用户名
		String userName = map.get("USERNAME");
	    //形如 "C:\Users\andy.li\Downloads";
		String path_download="C:\\Users\\"+userName+"\\Downloads"+"\\"+docName;
	
		try {
			FileOutputStream fo=new FileOutputStream(path_download);
			FileInputStream is=new FileInputStream(path_from);
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
		
		//文件下载成功,最后完成页面回发
	   String res=to_doc_op(pageIndex,model);
				
       return res;
	}
}

