package u.and.i.bucket.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import u.and.i.bucket.vo.BucketVo;

public interface BucketDao {
	
	/**
	 * Insert Bucket
	 * */
	int insertBucket(BucketVo bucket);
	
	/**
	 * Get Bucket List
	 * */
	List<BucketVo> getBucketList(boolean done);
	
	/**
	 * Get Bucket
	 * */
	BucketVo getBucket(int bucketNo);
	
	/**
	 * Delete Bucket
	 * */
	int deleteBucket(int bucketNo);
	
	
}
