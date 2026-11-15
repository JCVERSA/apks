package defpackage;

import androidx.annotation.IntRange;
import androidx.p004lifecycle.LiveData;
import androidx.room.Delete;
import androidx.room.Query;
import androidx.room.Upsert;
import com.transsion.dbdata.database.AudioPlayHistory;
import com.transsion.dbdata.database.MediaPlayCount;
import java.util.List;

public interface ht {

    public static final class a {
        public static int a(ht htVar, long j, long j2, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: incrementPlayCountByMediaId");
            }
            if ((i & 2) != 0) {
                j2 = System.currentTimeMillis();
            }
            return htVar.incrementPlayCountByMediaId(j, j2);
        }

        public static int b(ht htVar, long j, long j2, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resetPlayCount");
            }
            if ((i & 2) != 0) {
                j2 = System.currentTimeMillis();
            }
            return htVar.resetPlayCount(j, j2);
        }
    }

    @Query("DELETE FROM audio_play_history")
    int deleteAll();

    @Query("DELETE FROM audio_play_history WHERE media_id = :mediaId")
    int deleteByMediaId(long j);

    @Query("DELETE FROM audio_play_history WHERE media_id IN (:mediaIds)")
    int deleteByMediaIds(List<Long> list);

    @Query("DELETE FROM audio_play_history WHERE _data = :path")
    int deleteByPath(long j);

    @Query("DELETE FROM audio_play_history WHERE media_id IN (:paths)")
    int deleteByPaths(List<Integer> list);

    @Delete
    int deleteMultiple(List<AudioPlayHistory> list);

    @Delete
    int deleteSingle(AudioPlayHistory audioPlayHistory);

    @Query("SELECT _data, play_count FROM audio_play_history WHERE play_count > 0 AND _data IS NOT NULL AND _data != ''")
    List<MediaPlayCount> getAllAudioPlayCounts();

    @Query("SELECT * FROM audio_play_history ORDER BY play_count DESC")
    List<AudioPlayHistory> getAllByPlayCount();

    @Query("SELECT * FROM audio_play_history ORDER BY update_time DESC")
    List<AudioPlayHistory> getAllByUpdateTime();

    @Query("SELECT DISTINCT media_id FROM audio_play_history WHERE play_count >= 0 ORDER BY update_time DESC LIMIT :limitCount")
    List<Long> getAllPlayRecordMediaIdSet(int i);

    @Query("SELECT * FROM audio_play_history WHERE play_count >= 0 ORDER BY update_time DESC LIMIT :limitCount")
    List<AudioPlayHistory> getAllPlayRecordMediaIds(int i);

    @Query("SELECT * FROM audio_play_history WHERE media_id = :mediaId")
    AudioPlayHistory getByMediaId(long j);

    @Query("SELECT * FROM audio_play_history WHERE media_id IN (:mediaIds)")
    List<AudioPlayHistory> getByMediaIds(List<Long> list);

    @Query("SELECT * FROM audio_play_history WHERE _data = :path")
    AudioPlayHistory getByPath(String str);

    @Query("SELECT * FROM audio_play_history WHERE media_id IN (:paths)")
    List<AudioPlayHistory> getByPaths(List<String> list);

    @Query("SELECT * FROM audio_play_history WHERE play_count >= :minPlayCount ORDER BY play_count DESC, update_time DESC LIMIT :limitCount")
    List<AudioPlayHistory> getFrequentPlayedMediaIds(@IntRange(from = 1, to = Long.MAX_VALUE) int i, int i2);

    @Query("SELECT play_count FROM audio_play_history WHERE media_id = :mediaId")
    Integer getPlayCountByMediaId(long j);

    @Query("SELECT play_count FROM audio_play_history WHERE _data = :path")
    Integer getPlayCountByPath(String str);

    @Query("UPDATE audio_play_history SET play_count = play_count + 1, update_time = :currentTime WHERE media_id = :mediaId")
    int incrementPlayCountByMediaId(long j, long j2);

    @Query("UPDATE audio_play_history SET play_count = play_count + 1, update_time = :currentTime WHERE _data = :path")
    int incrementPlayCountByPath(String str, long j);

    @Query("SELECT _data, play_count FROM audio_play_history WHERE play_count > 0 AND _data IS NOT NULL AND _data != ''")
    LiveData<List<MediaPlayCount>> observePlayHistory();

    @Query("UPDATE audio_play_history SET play_count = 0 , update_time = :currentTime WHERE media_id = :mediaId ")
    int resetPlayCount(long j, long j2);

    @Upsert
    List<Long> upsertMultiple(List<AudioPlayHistory> list);

    @Upsert
    long upsertSingle(AudioPlayHistory audioPlayHistory);
}
