package defpackage;

import android.database.Cursor;
import androidx.p004lifecycle.LiveData;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Transaction;
import androidx.room.Update;
import com.transsion.dbdata.database.MediaPlayCount;
import com.transsion.dbdata.database.VideoRecord;
import java.util.List;
import java.util.Map;

public interface g5c {
    @Transaction
    default void batchUpdatePlayCounts(Map<String, Integer> map) {
        for (Map.Entry<String, Integer> entry : map.entrySet()) {
            updatePlayCountByPath(entry.getKey(), entry.getValue().intValue());
        }
    }

    @Query("DELETE FROM VideoStates")
    int deleteAllVideoRecord();

    @Query("DELETE FROM VideoStates WHERE _id IN (:mediaIds)")
    int deleteBatchVideoRecordsByMediaIds(List<Integer> list);

    @Query("DELETE FROM VideoStates WHERE _data =:data")
    int deleteVideoRecordByData(String str);

    @Query("DELETE FROM VideoStates WHERE _id =:media_id")
    int deleteVideoRecordByMediaId(int i);

    @Query("DELETE FROM VideoStates WHERE _id =:media_id AND _data =:data")
    int deleteVideoRecordByMediaIdAndData(String str, int i);

    @Query("SELECT * FROM VideoStates ORDER BY record_date_modified DESC")
    List<VideoRecord> getAllRecordOrderRecordDate();

    @Query("SELECT _data, play_count FROM VideoStates WHERE play_count > 0 AND _data IS NOT NULL AND _data != ''")
    List<MediaPlayCount> getAllVideoPlayCounts();

    @Query("SELECT * FROM VideoStates ORDER BY record_date_modified DESC LIMIT :limit")
    LiveData<List<VideoRecord>> getAllVideoRecordList(int i);

    @Query("SELECT * FROM VideoStates WHERE bucket_id = :bucket_id AND isVirtualFolder =:isVirtualFolder AND virtualFolder_matchName =:virtualFolderMatchName ORDER BY id DESC")
    List<VideoRecord> getRecordListForBucketList(int i, int i2, String str);

    @Query("SELECT _id FROM VideoStates ORDER BY record_date_modified DESC LIMIT:limit")
    List<Integer> getRecordMediaIdsOrderRecordDate(int i);

    @Query("SELECT * FROM VideoStates WHERE _data =:data")
    VideoRecord getTheVideoRecordMediaCountByData(String str);

    @Query("SELECT * FROM VideoStates WHERE _id = :mediaId ORDER BY record_date_modified DESC")
    VideoRecord getTheVideoRecordMediaCountById(int i);

    @Query("SELECT * FROM VideoStates WHERE _id = :mediaId AND bucket_id =:bucketId")
    Cursor getVideoRecordByMediaIdAndBuickId(int i, int i2);

    @Query("SELECT * FROM VideoStates WHERE _id = :mediaId AND bucket_id =:bucketId")
    List<VideoRecord> getVideoRecordListByMediaIdAndBuickId(int i, int i2);

    @Query("SELECT * FROM VideoStates WHERE _id = :mediaId")
    Cursor getVideoRecordMediaCountById(int i);

    @Query("SELECT subtitle_index FROM VideoStates WHERE _id = :mediaId")
    List<Integer> getVideoRecordSubtitleIndexByMediaId(int i);

    @Query("UPDATE VideoStates SET play_count = play_count + 1, record_date_modified = :currentTime WHERE _id = :mediaId")
    int incrementPlayCountByMediaId(long j, long j2);

    @Query("UPDATE VideoStates SET play_count = play_count + 1, record_date_modified = :currentTime WHERE _data = :filePath")
    int incrementPlayCountByPath(String str, long j);

    @Insert
    long insertVideoRecord(VideoRecord videoRecord);

    @Insert
    long[] insertVideoRecord(List<VideoRecord> list);

    @Query("SELECT _data, play_count FROM VideoStates WHERE play_count > 0 AND _data IS NOT NULL AND _data != ''")
    LiveData<List<MediaPlayCount>> observePlayHistory();

    @Query("UPDATE VideoStates SET play_count = :playCount WHERE _data = :filePath")
    void updatePlayCountByPath(String str, int i);

    @Update
    int updateVideoRecord(VideoRecord videoRecord);
}
