package u.and.i.calendar.service;

import java.util.List;

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
		BoardVo board = calendarDao.getEvent(boardNo);
		System.out.println(board.getBoardNo());
		System.out.println(board.getTitle());
		System.out.println(board.getContent());
		System.out.println(board.getStartDate());
		System.out.println(board.getEndDate());
		List<String> fileNameList = board.getFileNameLIst();
		for(String fileName : fileNameList) {
			System.out.println(fileName);
		}
		
		return calendarDao.getEvent(boardNo);
	}
}
