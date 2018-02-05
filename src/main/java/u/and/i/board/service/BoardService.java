package u.and.i.board.service;

import java.io.IOException;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import u.and.i.board.vo.BoardVo;

public interface BoardService {

	/**
	 * insert board
	 * @throws IOException 
	 * @throws IllegalStateException 
	 * */
	int insertBoard(BoardVo board, List<MultipartFile> files) throws IllegalStateException, IOException; 
	
	/**
	 * update board
	 * */
	int updateBoard(BoardVo board);
	
	/**
	 * get Board
	 * */
	BoardVo getBoard(int boardNo);
	
	/**
	 * get BoardList
	 * */
	List<BoardVo> getBoardList();
	
	
}
