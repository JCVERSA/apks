package defpackage;

import android.database.Cursor;
import androidx.p004lifecycle.LiveData;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.transsion.dbdata.database.PlayListMedia;
import java.util.List;

public interface d68 {
    @Query("DELETE FROM media_playList WHERE playlistFlag == 1")
    int deleteAllAudioPlayRecord();

    @Query("DELETE FROM media_playList WHERE playlistFlag == 2")
    int deleteAllFavoriteItemRecord();

    @Query("DELETE FROM media_playList")
    int deleteAllPlayListMedia();

    @Query("DELETE FROM media_playList WHERE media_id =:media_id AND playlistFlag == 1")
    int deleteAudioPlayRecordById(int i);

    @Query("DELETE FROM media_playList WHERE media_id IN (:media_ids) AND playlistFlag == 1")
    int deleteAudioPlayRecordByIds(int[] iArr);

    @Query("DELETE FROM media_playList WHERE media_id =:media_id AND playlistFlag == 2")
    int deleteFavoriteItemById(int i);

    @Query("DELETE FROM media_playList WHERE media_id IN (:media_ids) AND playlistFlag == 2")
    int deleteFavoriteItemById(int[] iArr);

    @Query("DELETE FROM media_playList WHERE playlist_id =:playlist_id AND media_id =:media_id")
    int deletePlayListMedia(int i, int i2);

    @Query("DELETE FROM media_playList WHERE playlist_id =:playlist_id AND media_id IN (:media_ids)")
    int deletePlayListMedia(int i, int[] iArr);

    @Delete
    void deletePlayListMedia(PlayListMedia playListMedia);

    @Query("DELETE FROM media_playList WHERE id =:id")
    void deletePlayListMediaById(int i);

    @Query("DELETE FROM media_playList WHERE media_id =:media_id")
    void deletePlayListMediaByMediaId(int i);

    @Query("DELETE FROM media_playList WHERE media_id IN (:mediaIds)")
    void deletePlayListMediaByMediaId(List<Integer> list);

    @Query("DELETE FROM media_playList WHERE playlist_id =:playlist_id")
    void deletePlayListMediaByPlayListId(int i);

    @Query("SELECT * FROM media_playList WHERE playlistFlag == 1 ORDER BY record_time DESC  LIMIT :limitCount")
    List<PlayListMedia> getAllAudioViewRecord(int i);

    @Query("SELECT * FROM media_playList WHERE playlistFlag == 2 LIMIT :limitCount")
    List<PlayListMedia> getAllFavoriteItem(int i);

    @Query("SELECT * FROM media_playList")
    List<PlayListMedia> getAllPlayListMedia();

    @Query("SELECT * FROM media_playList WHERE playlistFlag != 1 AND playlistFlag != 2  LIMIT :limitCount")
    LiveData<List<PlayListMedia>> getAllPlayListMediaLiveData(int i);

    @Query("SELECT * FROM media_playList WHERE media_id = :media_id AND playlistFlag == 1")
    PlayListMedia getAudioPlayRecordById(int i);

    @Query("SELECT * FROM media_playList WHERE playlistFlag == 1 ORDER BY record_time DESC LIMIT :limitCount")
    LiveData<List<PlayListMedia>> getAudioPlayRecordList(int i);

    @Query("SELECT media_id FROM media_playList WHERE playlistFlag == 1 ORDER BY record_time DESC LIMIT :limitCount")
    List<Integer> getAudioPlayRecordMediaIds(int i);

    @Query("SELECT * FROM media_playList WHERE media_id = :media_id AND playlistFlag == 2")
    PlayListMedia getFavoriteItemById(int i);

    @Query("SELECT * FROM media_playList WHERE playlistFlag == 2 LIMIT :limitCount")
    LiveData<List<PlayListMedia>> getFavoriteItemList(int i);

    @Query("SELECT media_id FROM media_playList WHERE playlistFlag == 2 LIMIT :limitCount")
    List<Integer> getFavoriteItemMediaIds(int i);

    @Query("SELECT * FROM media_playList WHERE playlist_id = :playListId LIMIT :limitCount")
    List<PlayListMedia> getPlayListMediaById(int i, int i2);

    @Query("SELECT * FROM media_playList WHERE media_id = :mediaId")
    List<PlayListMedia> getPlayListMediaByIds(int i);

    @Query("SELECT * FROM media_playList WHERE playlist_id = :playListId AND media_id = :mediaId")
    List<PlayListMedia> getPlayListMediaByIds(int i, int i2);

    @Query("SELECT * FROM media_playList WHERE playlist_id = :playListId AND media_id = :mediaId")
    PlayListMedia getPlayListMediaByIdsInList(int i, int i2);

    @Query("SELECT * FROM media_playList WHERE playlist_id = :playListId")
    Cursor getPlayListMediaCountById(int i);

    @Query("SELECT * FROM media_playList")
    Cursor getPlayListMediaCursor();

    @Query("SELECT media_id FROM media_playList WHERE playlist_id = :playListId")
    List<Integer> getPlayListMediaIdByPlayListId(int i);

    @Query("SELECT * FROM media_playList WHERE play_count > 0")
    List<PlayListMedia> getPlayedMediaList();

    @Insert
    long insertPlayListMedia(PlayListMedia playListMedia);

    @Insert
    long[] insertPlayListMedia(List<PlayListMedia> list);

    @Update
    int updateAudioPlayRecord(PlayListMedia playListMedia);

    @Update
    int updatePlayListMedia(PlayListMedia playListMedia);

    @Update
    int updatePlayListMedias(List<PlayListMedia> list);
}
