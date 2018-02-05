package u.and.i.bucket.service;

import java.util.List;

import u.and.i.bucket.vo.BucketVo;

public interface BucketService {

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
