package com.gms.web.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.gms.web.constants.*;

//moveCommand를 위해 존재.. 객체화 시키기 위해
public class Command implements Commandable{
	protected String dir, action, page, view;

	public String getView() {
		return view;
	}

	public String getDirectory() {
		return dir;
	}

	public void setDirectory(String directory) {
		this.dir = directory;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}
	
	@Override
	public void process() {
		this.view =Path.VIEW+dir+Path.SEPARATOR+page+Extention.JSP;
	}
	
	public String toString(){
		return "Command [DEST="+dir+"/"+page+".jsp"+",ACTION="+action+"]";
		
	}

}
