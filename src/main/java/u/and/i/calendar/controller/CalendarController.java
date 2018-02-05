package u.and.i.calendar.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import u.and.i.board.service.BoardService;
import u.and.i.board.vo.BoardVo;
import u.and.i.calendar.service.CalendarService;

@Controller
@RequestMapping("/calendar")
public class CalendarController {

	@Autowired
	private CalendarService calendarService;
	
	@ResponseBody
	@RequestMapping(value="/getEventList", method=RequestMethod.GET)
	public Map<String, Object> getEventList(HttpServletRequest request, HttpServletResponse response) {
		String start = request.getParameter("start");
		String end = request.getParameter("end");
	
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		
		Calendar cal = df.getCalendar();
		cal.setTimeInMillis(Long.parseLong(start));
		start = df.format(cal.getTime()).substring(0, 10);
		
		Calendar cal2 = df.getCalendar(); 
		cal2.setTimeInMillis(Long.parseLong(end));
		end = df.format(cal2.getTime()).substring(0, 10);
		
		
		List<BoardVo> list = calendarService.getEventList(start, end);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("eventList", list);
		
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value="/getEvent", method=RequestMethod.POST)
	public BoardVo getEvent(HttpServletRequest request, HttpServletResponse response) {
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
		BoardVo board = calendarService.getEvent(boardNo); 
		
		
		
		
	}
	
}
