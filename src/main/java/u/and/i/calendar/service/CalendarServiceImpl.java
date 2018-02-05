package u.and.i.calendar.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import u.and.i.board.vo.BoardVo;
import u.and.i.calendar.dao.CalendarDao;

@Service
public class CalendarServiceImpl implements CalendarService {

	@Autowired
	private CalendarDao calendarDao;
	
	public List<BoardVo> getEventList(String start, String end) {
		return calendarDao.getEventList(start, end);
	}

	@Override
	public BoardVo getEvent(int boardNo) {
		return calendarDao.getEvent(boardNo);
	}
}
