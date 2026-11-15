package defpackage;

import androidx.p004lifecycle.LiveData;
import androidx.room.Delete;
import androidx.room.Query;
import androidx.room.Upsert;
import com.transsion.dbdata.database.MediaDataMissingItem;
import java.util.List;

public interface oe6 {
    @Query("DELETE FROM media_data_missing WHERE media_id = :mediaId")
    int deleteByMediaId(int i);

    @Query("DELETE FROM media_data_missing WHERE media_id IN (:mediaIds)")
    int deleteByMediaIds(List<Integer> list);

    @Query("DELETE FROM media_data_missing WHERE _data = :mediaPath")
    int deleteByMediaPath(String str);

    @Delete
    int deleteMultiple(List<MediaDataMissingItem> list);

    @Delete
    int deleteSingle(MediaDataMissingItem mediaDataMissingItem);

    @Query("SELECT * FROM media_data_missing WHERE media_type = :mediaType")
    List<MediaDataMissingItem> getAllByMediaType(int i);

    @Query("SELECT * FROM media_data_missing")
    List<MediaDataMissingItem> getAllMissingData();

    @Query("SELECT * FROM media_data_missing")
    LiveData<List<MediaDataMissingItem>> getAllMissingDataLiveData();

    @Query("SELECT * FROM media_data_missing WHERE media_id = :mediaId LIMIT 1")
    MediaDataMissingItem getByMediaId(int i);

    @Query("SELECT * FROM media_data_missing WHERE _data = :mediaPath LIMIT 1")
    MediaDataMissingItem getByMediaPath(String str);

    @Upsert
    List<Long> upsertMultiple(List<MediaDataMissingItem> list);

    @Upsert
    long upsertSingle(MediaDataMissingItem mediaDataMissingItem);
}
