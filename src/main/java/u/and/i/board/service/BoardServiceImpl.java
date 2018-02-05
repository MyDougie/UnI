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
import u.and.i.util.UploadUtil;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired
	BoardDao boardDao;
	
	private String getSavePath(String startDate) {
		String savePath = "c://SaveTest//board//" + startDate.replaceAll("-", "//");

		// savePath = yyyy//mm//dd
		return savePath;
	}
	
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
				String subDir = board.getStartDate().replaceAll("-", "//");// 2017//09//30
				
				//1. 파일 upload
				fileName = UploadUtil.uploadFile("board", subDir, file);//type, subDir, file
				
				//2. DB에 파일이름 저장.
				boardDao.insertBoardImg(lastBoardNo, fileName); 
				/*
				long uniqueTime = new Date().getTime();
				
				fileName = uniqueTime + "_" + file.getOriginalFilename();// 1_파일명, 2_파일명, ...
				
				
				
				//2. 서버디렉토리에 실제파일 저장.
				//2-1. 디렉토리명 구하기
				savePath = getSavePath(board.getStartDate()) + "//";
				
				System.out.println("savePath : " + savePath);				
				System.out.println("fileName : " + fileName);		
				
				//2-2. 디렉토리 없으면 생성
				new File(savePath).mkdirs();
				
				
				//2-3. 파일 저장하기.
				file.transferTo(new File(savePath + fileName));
				*/
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
