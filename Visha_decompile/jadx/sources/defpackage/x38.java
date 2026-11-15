package defpackage;

import androidx.p004lifecycle.LiveData;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.transsion.dbdata.database.PlayList;
import java.util.List;

public interface x38 {
    @Query("DELETE FROM playlist")
    int deleteAllPlayList();

    @Delete
    int deletePlayList(PlayList playList);

    @Query("DELETE FROM playlist WHERE id =:id")
    int deletePlayListById(int i);

    @Query("SELECT * FROM playlist ORDER BY setup_time DESC LIMIT :limitCount")
    List<PlayList> getPlayList(int i);

    @Query("SELECT * FROM playlist ORDER BY setup_time DESC LIMIT :limitCount")
    LiveData<List<PlayList>> getPlayListList(int i);

    @Query("SELECT * FROM playlist ORDER BY setup_time DESC  LIMIT :limitCount")
    List<PlayList> getPlayListListForService(int i);

    @Insert
    long insertPlayList(PlayList playList);

    @Update
    int updatePlayList(PlayList playList);
}
