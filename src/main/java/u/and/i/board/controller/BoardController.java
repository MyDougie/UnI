package u.and.i.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import u.and.i.board.service.BoardService;
import u.and.i.board.vo.BoardVo;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Autowired
	BoardService boardService;
	
	@RequestMapping("/insertBoard")
	public String insertBoard(MultipartHttpServletRequest  mhsr, HttpServletResponse response, BoardVo board, Model model) throws IOException {
		
		String startDate = board.getStartDate();
		String endDate = board.getEndDate();
		String title = board.getTitle();
		String content = board.getContent();
		//List<String> imgPathList = board.getImgPath();
		//System.out.println(board.getWriter());
		/*
		if(imgPathList.size() != 0 && imgPathList !=null) {
			for(String imgPath : imgPathList) {
				System.out.println(imgPath);
			}
		}
		*/
		List<MultipartFile> files = mhsr.getFiles("file");
		
		for(MultipartFile file : files) {
			System.out.println("type : " +file.getContentType());
			System.out.println("fileName : " + file.getOriginalFilename());
			System.out.println("size : " + file.getSize());
		}
		
		
		int re = boardService.insertBoard(board, files);
		if(re>0) {
			
		}else {
			
		}
		
		return "redirect:/calendar";
	}
}
