package u.and.i.restaurant.dao;

import java.util.List;

import u.and.i.restaurant.vo.RestaurantVo;

public interface RestaurantDao {

	/**
	 * Insert Restaurant
	 * */
	int insertRestaurant(RestaurantVo restaurant);
	
	/**
	 * Get Restaurant List
	 * */
	List<RestaurantVo> getRestaurantList(boolean visited);
	
	/**
	 * Get Restaurant
	 * */
	RestaurantVo getRestaurant(int restId);
	
	
	
	
	
	
	
}
