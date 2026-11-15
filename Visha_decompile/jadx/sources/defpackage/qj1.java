package defpackage;

import androidx.p004lifecycle.LiveData;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.transsion.dbdata.database.ConvertingVideo;
import java.util.List;

public interface qj1 {
    @Query("DELETE FROM converting_video WHERE converted_status =:converted_status")
    void deleteAllConvertFailedVideo(int i);

    @Query("DELETE FROM converting_video")
    int deleteAllConvertingVideo();

    @Query("DELETE FROM converting_video WHERE mediaId =:id")
    void deleteConvertingVideoById(int i);

    @Query("DELETE FROM converting_video WHERE mediaId =:media_id")
    int deleteVideoByMediaId(int i);

    @Query("SELECT * FROM converting_video ORDER BY add_time DESC LIMIT :limit")
    LiveData<List<ConvertingVideo>> getAll(int i);

    @Query("SELECT * FROM converting_video ORDER BY add_time DESC LIMIT :limit")
    List<ConvertingVideo> getAllConvertingVideo(int i);

    @Query("SELECT mediaId FROM converting_video ORDER BY add_time DESC LIMIT :limit")
    List<Integer> getConvertMediaIdsOrderTime(int i);

    @Query("SELECT * FROM converting_video WHERE mediaId=:mediaId")
    ConvertingVideo getConvertingVideoByMediaId(int i);

    @Insert(onConflict = 1)
    long insert(ConvertingVideo convertingVideo);

    @Insert(onConflict = 1)
    void insertVideos(List<ConvertingVideo> list);

    @Update
    int updateConvertingVideo(ConvertingVideo convertingVideo);
}
