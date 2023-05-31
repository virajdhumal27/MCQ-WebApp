package com.viraj.mcq.controller;

public class JspFileResolver {
	
	public static String getJspFile(String filename) {
		return "/WEB-INF/jsp/" + filename;
	}
}
