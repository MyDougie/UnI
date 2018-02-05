package u.and.i.calendar.service;

import java.util.List;

import u.and.i.board.vo.BoardVo;

public interface CalendarService {

	List<BoardVo> getEventList(String start, String end);

	BoardVo getEvent(int boardNo);

}