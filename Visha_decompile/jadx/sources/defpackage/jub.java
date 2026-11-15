package defpackage;

import androidx.p004lifecycle.LiveData;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.transsion.dbdata.database.VideoPlayList;
import java.util.List;

public interface jub {
    @Query("DELETE FROM video_playlist")
    int deleteAllPlayList();

    @Delete
    int deletePlayList(VideoPlayList videoPlayList);

    @Query("DELETE FROM video_playlist WHERE id =:id")
    int deletePlayListById(int i);

    @Query("SELECT * FROM video_playlist  ORDER BY setup_time DESC  LIMIT :limit")
    List<VideoPlayList> getPlayList(int i);

    @Query("SELECT * FROM video_playlist ORDER BY setup_time DESC LIMIT :limit")
    LiveData<List<VideoPlayList>> getPlayListList(int i);

    @Insert
    long insertPlayList(VideoPlayList videoPlayList);

    @Update
    int updatePlayList(VideoPlayList videoPlayList);
}
