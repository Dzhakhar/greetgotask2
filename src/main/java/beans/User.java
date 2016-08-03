package beans;

import java.util.*;
import javax.servlet.http.*;

public class User implements java.io.Serializable {
	private String username;
	private String password;
	private String name;
	private String pswd;

	public User(){
		username = "admin";
		password = "q";
	}

	public boolean login(HttpServletRequest req, HttpServletResponse res){
		name = req.getParameter("username");
		pswd = req.getParameter("password");
		boolean success = false;

		if(name.equals(username) && pswd.equals(password)){
			success = true;
		}

		return success;
	}

	public boolean isAuthenticated(HttpServletRequest req, HttpServletResponse res){
		//
		return false;
	}

}
