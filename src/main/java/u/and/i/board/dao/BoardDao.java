package u.and.i.board.dao;

import java.util.List;

import u.and.i.board.vo.BoardVo;

public interface BoardDao {
	
	/**
	 * Insert Board
	 * */
	int insertBoard(BoardVo board);
	
	/**
	 * Insert Board Image
	 * */
	int insertBoardImg(int boardNo, String imgPath);
	
	/**
	 * Get Board List
	 * */
	List<BoardVo> getBoardList();
	
	/**
	 * Get Board
	 * */
	BoardVo getBoard(int boardNo);
	
	/**
	 * Update Board
	 * */
	int updateBoard(BoardVo board);
	
	/**
	 * Get Last BoardNo
	 * */
	int getLastBoardNo();
	
	
}