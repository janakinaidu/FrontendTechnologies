package com.naidu.springajax.SpringAjaxApp;

import javax.servlet.http.HttpServletRequest;

import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class EmployeeController {

	@RequestMapping("/register")
	public String getRegistrationPage() {
		return "register";
	}

	@RequestMapping("/checkValidAge")
	public @ResponseBody String validateAge(HttpServletRequest request) {
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		int age = Integer.parseInt(request.getParameter("age"));
		JSONObject obj = new JSONObject();
		obj.put("firstname", firstname);
		obj.put("lastname", lastname);
		if (age >= 18) {
			obj.put("status", "validage");
		} else {
			obj.put("status", "invalidage");
		}
		return obj.toString();
	}
}
