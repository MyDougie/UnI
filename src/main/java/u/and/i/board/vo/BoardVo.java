package u.and.i.board.vo;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class BoardVo {
	private int boardNo;
	private String title;
	private String content;
	private String startDate;
	private String endDate;
	private String writer;
	private String regDate;
	private List<MultipartFile> files;
	private List<String> fileNameList;
	
	public BoardVo() {}
	public BoardVo(int boardNo, String title, String content, String startDate, String endDate, String writer,
			String regDate) {
		super();
		this.boardNo = boardNo;
		this.title = title;
		this.content = content;
		this.startDate = startDate;
		this.endDate = endDate;
		this.writer = writer;
		this.regDate = regDate;
	}
	public BoardVo(int boardNo, String title, String content, String startDate, String endDate, String writer,
			String regDate, List<String> fileNameList) {
		super();
		this.boardNo = boardNo;
		this.title = title;
		this.content = content;
		this.startDate = startDate;
		this.endDate = endDate;
		this.writer = writer;
		this.regDate = regDate;
		this.fileNameList = fileNameList;
	}
	public BoardVo(int boardNo, String title, String content, String startDate, String endDate, String writer,
			String regDate, List<MultipartFile> files, List<String> fileNameList) {
		super();
		this.boardNo = boardNo;
		this.title = title;
		this.content = content;
		this.startDate = startDate;
		this.endDate = endDate;
		this.writer = writer;
		this.regDate = regDate;
		this.files = files;
		this.fileNameList = fileNameList;
	}
	
	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public List<MultipartFile> getFiles() {
		return files;
	}
	public void setFiles(List<MultipartFile> files) {
		this.files = files;
	}
	public List<String> getFileNameLIst() {
		return fileNameList;
	}
	public void setFileNameList(List<String> fileNameList) {
		this.fileNameList = fileNameList;
	}
	@Override
	public String toString() {
		return "BoardVo [boardNo=" + boardNo + ", title=" + title + ", content=" + content + ", startDate=" + startDate
				+ ", endDate=" + endDate + ", writer=" + writer + ", regDate=" + regDate + ", files=" + files
				+ ", fileNameList=" + fileNameList + "]";
	}
	
	
	
	
}
