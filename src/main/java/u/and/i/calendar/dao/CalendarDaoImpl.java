package u.and.i.calendar.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import u.and.i.board.vo.BoardVo;
import u.and.i.util.DbUtil;

@Component
public class CalendarDaoImpl implements CalendarDao {

	Connection conn = null;
	PreparedStatement ps = null;
	ResultSet rs = null;
	
	private final String GET_EVENT_LIST = "select * from board where (start_date >= ? and start_date <= ?) or (end_date >= ? and end_date <= ?)";
	private final String GET_EVENT = "select x.board_id, x.title, x.content, x.start_date, x.end_date, x.writer, x.img_path \r\n" + 
			"from(select t.board_id, t.title, t.content, t.start_date, t.end_date, t.writer, t.img_path \r\n" + 
			"    from(select b.board_id, b.title, b.content, b.start_date, b.end_date, b.writer, i.img_path \r\n" + 
			"        from(board b left outer join board_img i on b.board_id = i.board_id)) t \r\n" + 
			"    left outer join board_reply r on t.board_id = r.board_id) x\r\n" + 
			"where x.board_id = ?";
	
	public List<BoardVo> getEventList(String start, String end) {
		List<BoardVo> list = new ArrayList<BoardVo>();
		System.out.println(start);
		System.out.println(end);
		try {
			conn = DbUtil.getConnection();
			ps = conn.prepareStatement(GET_EVENT_LIST);
			ps.setString(1, start);
			ps.setString(2, end);
			ps.setString(3, start);
			ps.setString(4, end);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				list.add(new BoardVo(rs.getInt("board_id"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getString("start_date")+"T00:00:00",
						rs.getString("end_date")+"T13:00:00",
						rs.getString("writer"),
						rs.getString("reg_date")));
			}
					
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbUtil.closeConnection(rs, ps, conn);
		}
		
		return list;
	}


	@Override
	public BoardVo getEvent(int boardNo) {
		BoardVo board = new BoardVo();
		List<String> fileNameList = null;
		
		try {
			conn = DbUtil.getConnection();
			ps = conn.prepareStatement(GET_EVENT);
			ps.setInt(1, boardNo);

			rs = ps.executeQuery();
			while(rs.next()) {
				if(board.getFileNameList()==null || board.getFileNameList().size()==0) {
					fileNameList = new ArrayList<String>();
					
					board.setBoardNo(rs.getInt("board_id"));
					board.setTitle(rs.getString("title"));
					board.setContent(rs.getString("content"));
					board.setStartDate(rs.getString("start_date"));
					board.setEndDate(rs.getString("end_date"));
					board.setWriter(rs.getString("writer"));
					
					fileNameList.add(rs.getString("img_path"));
					board.setFileNameList(fileNameList);
					
				}else {
					fileNameList.add(rs.getString("img_path"));
					
				}
			}
			board.setFileNameList(fileNameList);
					
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbUtil.closeConnection(rs, ps, conn);
		}
		
		return board;
	}
}
