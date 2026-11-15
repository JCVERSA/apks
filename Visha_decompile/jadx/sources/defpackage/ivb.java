package defpackage;

import android.database.Cursor;
import androidx.p004lifecycle.LiveData;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.transsion.dbdata.database.VideoPlayListMedia;
import java.util.List;

public interface ivb {
    @Query("DELETE FROM video_media_playList")
    int deleteAllPlayListMedia();

    @Query("DELETE FROM video_media_playList WHERE playlistFlag = 2 AND _data =:data")
    int deleteFavoriteListMedia(String str);

    @Query("DELETE FROM video_media_playList WHERE playlist_id =:playlist_id AND media_id =:media_id")
    int deletePlayListMedia(int i, int i2);

    @Delete
    void deletePlayListMedia(VideoPlayListMedia videoPlayListMedia);

    @Query("DELETE FROM video_media_playList WHERE id =:id")
    void deletePlayListMediaById(int i);

    @Query("DELETE FROM video_media_playList WHERE media_id =:media_id")
    void deletePlayListMediaByMediaId(int i);

    @Query("DELETE FROM video_media_playList WHERE media_id IN (:mediaIds)")
    void deletePlayListMediaByMediaId(List<Integer> list);

    @Query("DELETE FROM video_media_playList WHERE playlist_id =:playlist_id")
    void deletePlayListMediaByPlayListId(int i);

    @Query("SELECT * FROM video_media_playList")
    List<VideoPlayListMedia> getAllPlayListMedia();

    @Query("SELECT * FROM video_media_playList LIMIT :limit")
    LiveData<List<VideoPlayListMedia>> getAllVideoPlayListMedia(int i);

    @Query("SELECT * FROM video_media_playList WHERE playlistFlag = 2 AND _data = :data ")
    VideoPlayListMedia getFavoriteItem(String str);

    @Query("SELECT * FROM video_media_playList WHERE playlistFlag = 2 LIMIT :limit")
    LiveData<List<VideoPlayListMedia>> getFavoriteItemList(int i);

    @Query("SELECT * FROM video_media_playList WHERE playlist_id = :playListId")
    List<VideoPlayListMedia> getPlayListMediaById(int i);

    @Query("SELECT * FROM video_media_playList WHERE media_id = :mediaId")
    List<VideoPlayListMedia> getPlayListMediaByIds(int i);

    @Query("SELECT * FROM video_media_playList WHERE playlist_id = :playListId AND media_id = :mediaId")
    List<VideoPlayListMedia> getPlayListMediaByIds(int i, int i2);

    @Query("SELECT * FROM video_media_playList WHERE playlistFlag = :playListFlag")
    List<VideoPlayListMedia> getPlayListMediaByPlaylistFlag(int i);

    @Query("SELECT * FROM video_media_playList WHERE playlist_id = :playListId")
    Cursor getPlayListMediaCountById(int i);

    @Query("SELECT * FROM video_media_playList")
    Cursor getPlayListMediaCursor();

    @Query("SELECT media_id FROM video_media_playList WHERE playlistFlag = :playListFlag")
    List<Integer> getPlayListMediaIdByPlayListFlag(int i);

    @Query("SELECT media_id FROM video_media_playList WHERE playlist_id = :playListId")
    List<Integer> getPlayListMediaIdByPlayListId(int i);

    @Insert
    long insertPlayListMedia(VideoPlayListMedia videoPlayListMedia);

    @Insert
    long[] insertPlayListMedia(List<VideoPlayListMedia> list);

    @Update
    int updatePlayListMedia(VideoPlayListMedia videoPlayListMedia);

    @Update
    int updatePlayListMedias(List<VideoPlayListMedia> list);
}
