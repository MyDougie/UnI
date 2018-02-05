package u.and.i.home.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	@RequestMapping("/")
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		return "index";
	}
	
	@RequestMapping("/calendar")
	public String calendar() {
		return "calendar/calendar";
	}
	
	@RequestMapping("/lifestyle")
	public String lifestyle() {
		return "lifestyle/lifestyle";
	}
	
	@RequestMapping("/restaurant")
	public String restaurant() {
		return "restaurant/restaurant";
	}
	
	@RequestMapping("/bucketList")
	public String bucketList() {
		return "bucketList/bucketList";
	}
	
	
}