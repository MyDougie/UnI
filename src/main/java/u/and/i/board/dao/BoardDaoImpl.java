package u.and.i.board.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Component;

import u.and.i.board.vo.BoardVo;
import u.and.i.util.DbUtil;

@Component
public class BoardDaoImpl implements BoardDao{
	
	@Override
	public int insertBoard(BoardVo board) {
		
		Connection conn = null;
		PreparedStatement ps = null;
		String sql = "insert into board values(board_seq.nextval, ?, ?, ?, ?, 'taegyu', to_char(sysdate, 'YYYY-MM-DD'))";
		int re = 0;
		
		try {
			conn = DbUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, board.getTitle());
			ps.setString(2, board.getContent());
			ps.setString(3, board.getStartDate());
			ps.setString(4, board.getEndDate());
			//writer
			
			re = ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbUtil.closeConnection(null, ps, conn);
		}
		
		return re;
	}
	
	@Override
	public int getLastBoardNo() {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select board_id from board where rownum=1 order by board_id desc";
		int re = 0;
		
		try {
			conn = DbUtil.getConnection();
			ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				re = rs.getInt(1);//last boardNo
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbUtil.closeConnection(rs, ps, conn);
		}
		
		return re;
	}
	
	@Override
	public int insertBoardImg(int boardNo, String imgPath) {
		Connection conn = null;
		PreparedStatement ps = null;
		String sql = "insert into board_img values(?, ?)";
		int re = 0;
		
		try {
			conn = DbUtil.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, boardNo);
			ps.setString(2, imgPath);

			re = ps.executeUpdate();
			
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DbUtil.closeConnection(null, ps, conn);
		}
		
		return re;
	}


	@Override
	public List<BoardVo> getBoardList() {
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "";
		
		
		return null;
	}

	@Override
	public BoardVo getBoard(int boardNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateBoard(BoardVo board) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	
	

}
