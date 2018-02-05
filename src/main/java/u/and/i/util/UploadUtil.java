package u.and.i.util;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class UploadUtil {


	private static final String FILE_SEPARATOR = "//";
	
	private static String getSavePath(String type, String subDir) {
		String rootDir = "c:" + FILE_SEPARATOR + "SaveTest" + FILE_SEPARATOR;
		return rootDir + type + FILE_SEPARATOR + subDir + FILE_SEPARATOR;
	}
	
	
	
	public static String uploadFile(String type, String subDir, MultipartFile file) throws IllegalStateException, IOException {
		long uniqueTime = new Date().getTime();
		
		String savePath = "";
		String fileName = "";
		String originFileName = file.getOriginalFilename();
		fileName = uniqueTime + "_" + originFileName;// 916345463179_파일명, 89789461387_파일명, ...
		
		//2. 서버디렉토리에 실제파일 저장.
		//2-1. 디렉토리명 구하기
		savePath = getSavePath(type, subDir);
		fileName = uniqueTime + "_" + originFileName;
		
		System.out.println("savePath : " + savePath);				
		System.out.println("fileName : " + fileName);		
		
		//2-2. 디렉토리 없으면 생성
		new File(savePath).mkdirs();
		
		//2-3. 파일 저장하기.
		file.transferTo(new File(savePath + fileName));
		
		return fileName;
	}
	
	
}
