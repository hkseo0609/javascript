package com.gms.web.factory;

import com.gms.web.command.Command;
import com.gms.web.command.MoveCommand;
import com.gms.web.constants.Action;

//생산자(ex.삼성 애플..)
public class CommandFactory {
	public static Command createCommand(String dir, String action, String page){
		Command cmd = null;
		switch(action){
		case Action.MOVE: 
		case Action.LOGIN:
		case Action.LOGOUT:
			cmd = new MoveCommand(dir, action, page); //다형성 common의 서브객체(moveCommand)가 cmd를 인스턴스화 시킨다
			break;
		
		default: 
			System.out.println("command fail"); 
		break;
		}
		return cmd;
	}
}
