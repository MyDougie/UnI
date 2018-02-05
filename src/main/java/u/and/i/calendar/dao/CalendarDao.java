package u.and.i.calendar.dao;

import java.util.List;
import java.util.Map;

import u.and.i.board.vo.BoardVo;

public interface CalendarDao {

	List<BoardVo> getEventList(String start, String end);

}