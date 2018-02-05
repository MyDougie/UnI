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
}
