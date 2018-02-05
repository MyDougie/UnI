package u.and.i.restaurant.vo;

import java.util.List;

public class RestaurantVo {

	private String restId;
	private String name;
	private String posX;
	private String posY;
	private int visited;
	private List<String> imgPath;
	
	public RestaurantVo() {}
	public RestaurantVo(String restId, String name, String posX, String posY, int visited, List<String> imgPath) {
		super();
		this.restId = restId;
		this.name = name;
		this.posX = posX;
		this.posY = posY;
		this.visited = visited;
		this.imgPath = imgPath;
	}
	
	public String getRestId() {
		return restId;
	}
	public void setRestId(String restId) {
		this.restId = restId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPosX() {
		return posX;
	}
	public void setPosX(String posX) {
		this.posX = posX;
	}
	public String getPosY() {
		return posY;
	}
	public void setPosY(String posY) {
		this.posY = posY;
	}
	public int getVisited() {
		return visited;
	}
	public void setVisited(int visited) {
		this.visited = visited;
	}
	public List<String> getImgPath() {
		return imgPath;
	}
	public void setImgPath(List<String> imgPath) {
		this.imgPath = imgPath;
	}
	
	@Override
	public String toString() {
		return "RestaurantVo [restId=" + restId + ", name=" + name + ", posX=" + posX + ", posY=" + posY + ", visited="
				+ visited + ", imgPath=" + imgPath + "]";
	}

	
	
}
