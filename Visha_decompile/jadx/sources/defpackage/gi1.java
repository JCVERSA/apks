package defpackage;

import androidx.p004lifecycle.LiveData;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.transsion.dbdata.database.ConvertAudio;
import java.util.List;

public interface gi1 {
    @Query("DELETE FROM convert_audio")
    int deleteAllConvertAudio();

    @Query("DELETE FROM convert_audio WHERE mediaId =:media_id")
    void deleteAudioByMediaId(int i);

    @Query("DELETE FROM convert_audio WHERE mediaId =:id")
    void deleteConvertAudioById(int i);

    @Query("SELECT * FROM convert_audio ORDER BY convert_time DESC LIMIT :limitCount")
    LiveData<List<ConvertAudio>> getAll(int i);

    @Query("SELECT * FROM convert_audio ORDER BY convert_time DESC  LIMIT :limitCount")
    List<ConvertAudio> getAllConvertAudio(int i);

    @Query("SELECT * FROM convert_audio WHERE data=:data")
    ConvertAudio getConvertAudioByData(String str);

    @Query("SELECT * FROM convert_audio WHERE mediaId=:mediaId")
    ConvertAudio getConvertAudioByMediaId(int i);

    @Query("SELECT mediaId FROM convert_audio ORDER BY convert_time DESC LIMIT :limitCount")
    List<Integer> getConvertMediaIdsOrderTime(int i);

    @Query("SELECT data FROM convert_audio ORDER BY convert_time DESC")
    List<String> getConvertPathListOrderTime();

    @Insert(onConflict = 1)
    long insert(ConvertAudio convertAudio);

    @Update
    int updateConvertAudio(ConvertAudio convertAudio);
}
