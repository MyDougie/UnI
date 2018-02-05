package u.and.i.user.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

	@RequestMapping("/loginPage")
	public String loginPage() {
		return "user/loginPage";
	}
	
	@RequestMapping("/login")
	public String login() {
		System.out.println("login!!");
		return "/";
	}
}
