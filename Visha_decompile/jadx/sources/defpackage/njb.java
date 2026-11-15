package defpackage;

import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Transaction;
import com.transsion.dbdata.database.UserBehaviorItem;
import java.util.List;

public interface njb {
    @Query("DELETE FROM user_behavior WHERE media_id =:mediaId")
    int deleteByMediaId(int i);

    @Query("DELETE FROM user_behavior WHERE media_id IN (:mediaIds)")
    @Transaction
    int deleteByMediaIds(List<Integer> list);

    @Delete
    int deleteMultiple(List<UserBehaviorItem> list);

    @Delete
    int deleteSingle(UserBehaviorItem userBehaviorItem);

    @Query("SELECT * FROM user_behavior WHERE media_id = :mediaId")
    UserBehaviorItem getByMediaId(int i);

    @Query("SELECT * FROM user_behavior WHERE _data = :data")
    UserBehaviorItem getByMediaPath(String str);

    @Query("SELECT * FROM user_behavior WHERE is_collected = 1 AND media_type = :mediaType")
    List<UserBehaviorItem> getCollectedItemsByMediaType(int i);

    @Query("SELECT _data FROM user_behavior WHERE is_video_to_audio = 1 ORDER BY video_to_audio_convert_time DESC LIMIT :limitCount")
    List<String> getConvertedAudioPathsOrderByTime(int i);

    @Insert
    List<Long> insertMultiple(List<UserBehaviorItem> list);

    @Insert
    long insertSingle(UserBehaviorItem userBehaviorItem);

    @Query("UPDATE user_behavior SET custom_cover = :coverPath WHERE media_id = :mediaId")
    int updateCoverPath(int i, String str);

    @Query("UPDATE user_behavior SET is_filter = :filter WHERE media_id = :mediaId")
    int updateFilterStatus(int i, boolean z);

    @Query("UPDATE user_behavior SET is_filter = :filter WHERE media_id IN (:mediaIds)")
    int updateFilterStatus(List<Integer> list, boolean z);

    @Query("UPDATE user_behavior SET is_hide = :hide WHERE media_id = :mediaId")
    int updateHideStatus(int i, boolean z);

    @Query("UPDATE user_behavior SET is_hide = :hide WHERE media_id IN (:mediaIds)")
    int updateHideStatus(List<Integer> list, boolean z);

    @Query("UPDATE user_behavior SET media_id = :newMediaId, _data = :newData WHERE media_id = :oldMediaId")
    int updateMediaIdAndPath(int i, int i2, String str);

    @Query("UPDATE user_behavior SET media_id = :newMediaId, _data = :newData WHERE _data = :oldPath")
    int updateMediaIdAndPath(String str, int i, String str2);
}
