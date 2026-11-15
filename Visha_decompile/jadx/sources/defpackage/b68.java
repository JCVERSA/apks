package defpackage;

import androidx.annotation.IntRange;
import androidx.p004lifecycle.LiveData;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.transsion.dbdata.database.PlayListItem;
import java.util.List;

public interface b68 {
    @Query("DELETE FROM playlist_item WHERE id = :playListId")
    int deleteById(long j);

    @Query("SELECT * FROM playlist_item WHERE category = 2")
    List<PlayListItem> getAllFavorites();

    @Query("SELECT * FROM playlist_item ORDER BY create_time DESC LIMIT :limitCount")
    List<PlayListItem> getByCreateTime(int i);

    @Query("SELECT * FROM playlist_item WHERE create_type = :createType ORDER BY CASE WHEN category = 1 THEN 0 WHEN category = 2 THEN 1 ELSE 2 END,create_time DESC LIMIT :limitCount")
    List<PlayListItem> getByCreateType(int i, int i2);

    @Query("SELECT * FROM playlist_item WHERE id = :playListId")
    PlayListItem getByPlayListID(long j);

    @Query("SELECT * FROM playlist_item WHERE category = 2 AND create_type = :createType")
    PlayListItem getFavoritePlaylist(int i);

    @Query("SELECT id FROM playlist_item WHERE category = 2 AND create_type = :createType")
    long getFavoritePlaylistId(int i);

    @Query("SELECT * FROM playlist_item WHERE create_type = :createType AND category != 2 LIMIT :limitCount")
    LiveData<List<PlayListItem>> getNonFavoritePlayListsWithLiveData(int i, @IntRange(from = 1, to = Long.MAX_VALUE) int i2);

    @Query("SELECT * FROM playlist_item WHERE id = :playListId")
    LiveData<PlayListItem> getPlayListById(long j);

    @Query("SELECT * FROM playlist_item WHERE create_type = :createType LIMIT :limitCount")
    LiveData<List<PlayListItem>> getPlayListsWithLiveData(int i, @IntRange(from = 1, to = Long.MAX_VALUE) int i2);

    @Query("SELECT id FROM playlist_item WHERE category = 1 AND create_type = :createType")
    long getRecentPlayListId(int i);

    @Insert
    List<Long> insertMultiple(List<PlayListItem> list);

    @Insert
    long insertSingle(PlayListItem playListItem);

    @Query("UPDATE playlist_item SET name = :newName WHERE id = :playlistId")
    int renamePlaylist(long j, String str);

    @Update
    int updatePlayList(PlayListItem playListItem);
}
