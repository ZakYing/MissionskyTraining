package com.missionsky.training.test;

import java.util.Map;

public class Test2 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
	
		Map<String, String> map = System.getenv();
		
		 String userName = map.get("USERNAME");// 获取用户名
		    String computerName = map.get("COMPUTERNAME");// 获取计算机名
		    String userDomain = map.get("USERDOMAIN");// 获取计算机域名
		    System.out.println(userName);
		    System.out.println(computerName);
		    System.out.println(userDomain);
	}

}
