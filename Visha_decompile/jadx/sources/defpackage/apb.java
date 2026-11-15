package defpackage;

import androidx.p004lifecycle.LiveData;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.transsion.dbdata.beans.VideoCloudCache;
import java.util.List;

public interface apb {
    @Query("DELETE FROM video_cloud_cache")
    int deleteAllCaches();

    @Query("DELETE FROM video_cloud_cache WHERE file_id = :fileId")
    int deleteByFileId(String str);

    @Query("DELETE FROM video_cloud_cache WHERE file_id IN (:fileIds)")
    int deleteByFileIds(List<String> list);

    @Query("DELETE FROM video_cloud_cache WHERE is_recent_data = 0")
    int deleteCommonData();

    @Query("DELETE FROM video_cloud_cache WHERE is_recent_data = 1")
    int deleteRecentData();

    @Query("SELECT * FROM video_cloud_cache")
    List<VideoCloudCache> getVideoCloud();

    @Query("SELECT * FROM video_cloud_cache WHERE (:dataType = 0 OR (CASE :dataType WHEN 1 THEN is_recent_data = 1 WHEN 2 THEN is_recent_data = 0 END)) ORDER BY CASE WHEN :sortOrder = 'DESC' THEN CASE :sortField WHEN 'createAt' THEN create_at WHEN 'duration' THEN duration WHEN 'size' THEN size ELSE create_at END END DESC, CASE WHEN :sortOrder = 'ASC' THEN CASE :sortField WHEN 'createAt' THEN create_at WHEN 'duration' THEN duration WHEN 'size' THEN size ELSE create_at END END ASC LIMIT :pageSize OFFSET (:pageNo - 1) * :pageSize")
    List<VideoCloudCache> getVideoCloudDataByPage(int i, int i2, String str, String str2, int i3);

    @Query("SELECT * FROM video_cloud_cache")
    LiveData<List<VideoCloudCache>> getVideoCloudLiveData();

    @Insert(onConflict = 1)
    long insertCache(VideoCloudCache videoCloudCache);

    @Insert(onConflict = 1)
    List<Long> insertCaches(List<VideoCloudCache> list);

    @Update
    int updateCache(VideoCloudCache videoCloudCache);

    @Query("UPDATE video_cloud_cache SET file_name = :fileName WHERE file_id = :fileId")
    int updateFileNameByFileId(String str, String str2);
}
