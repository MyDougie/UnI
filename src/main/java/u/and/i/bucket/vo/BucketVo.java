package u.and.i.bucket.vo;

import java.util.List;

public class BucketVo {
	private int bucketNo;
	private String name;
	private int done;
	private List<String> imgPath;
	
	public BucketVo() {}
	public BucketVo(int bucketNo, String name, int done, List<String> imgPath) {
		super();
		this.bucketNo = bucketNo;
		this.name = name;
		this.done = done;
		this.imgPath = imgPath;
	}
	
	public int getBucketNo() {
		return bucketNo;
	}
	public void setBucketNo(int bucketNo) {
		this.bucketNo = bucketNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getDone() {
		return done;
	}
	public void setDone(int done) {
		this.done = done;
	}
	public List<String> getImgPath() {
		return imgPath;
	}
	public void setImgPath(List<String> imgPath) {
		this.imgPath = imgPath;
	}
	
	@Override
	public String toString() {
		return "BucketVo [bucketNo=" + bucketNo + ", name=" + name + ", done=" + done + ", imgPath=" + imgPath + "]";
	}
	
	
	
}
