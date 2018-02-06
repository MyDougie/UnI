package u.and.i.board.service;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import u.and.i.board.dao.BoardDao;
import u.and.i.board.vo.BoardVo;
import u.and.i.util.ImgUtil;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	BoardDao boardDao;
	
	@Override
	public int insertBoard(BoardVo board, List<MultipartFile> files) throws IllegalStateException, IOException {
		//1. 보드 추가
		int re1 = boardDao.insertBoard(board);
		
		//2. 마지막에 추가된 boardNo가져오기
		int lastBoardNo = boardDao.getLastBoardNo();
		
		//3. 이미지 추가
		//int flag = 1;
		if(files.size()!=0 && files!=null) {
			String fileName = "";
			for(int i=0; i<files.size(); i++) {
				MultipartFile file = files.get(i);
				
				//1. 파일 upload
				String subDir = board.getStartDate().replaceAll("-", "//");// 2017//09//30
				fileName = ImgUtil.uploadFile("board", subDir, file);//type, subDir, file
				
				//2. DB에 파일이름 저장.
				boardDao.insertBoardImg(lastBoardNo, fileName); 
				
			}
		}
		
		return re1;
	}

	@Override
	public int updateBoard(BoardVo board) {
		return boardDao.updateBoard(board);
	}

	@Override
	public BoardVo getBoard(int boardNo) {
		return boardDao.getBoard(boardNo);
	}

	@Override
	public List<BoardVo> getBoardList() {
		return boardDao.getBoardList();
	}
	
	/*public static void main(String[] args) {
		String path = "c://deva//abcs";
		
		File file = new File(path);
		if(!file.exists()) {
			file.mkdirs();
			System.out.println("mkdirs success!!");
		}
				
	}*/

}
