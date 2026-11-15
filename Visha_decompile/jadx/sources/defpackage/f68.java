package defpackage;

import androidx.annotation.IntRange;
import androidx.p004lifecycle.LiveData;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.transsion.dbdata.database.PlayListFolderItem;
import com.transsion.dbdata.database.PlayListMediaItem;
import java.util.List;

public interface f68 {

    public static final class a {
        public static LiveData a(f68 f68Var, int i) {
            return d(f68Var, 1, null, Boolean.TRUE, i, 2, null);
        }

        public static LiveData b(f68 f68Var, int i) {
            return d(f68Var, 2, null, Boolean.TRUE, i, 2, null);
        }

        public static LiveData c(f68 f68Var, long j, int i, int i2) {
            return d(f68Var, Integer.valueOf(i), Long.valueOf(j), null, i2, 4, null);
        }

        public static LiveData d(f68 f68Var, Integer num, Long l, Boolean bool, int i, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: getPlayListMediaItemsLiveData");
            }
            if ((i2 & 1) != 0) {
                num = null;
            }
            if ((i2 & 2) != 0) {
                l = null;
            }
            if ((i2 & 4) != 0) {
                bool = null;
            }
            return f68Var.getPlayListMediaItemsLiveData(num, l, bool, i);
        }
    }

    LiveData a(int i);

    LiveData b(long j, int i, int i2);

    LiveData c(int i);

    @Query("DELETE FROM media_playlist_item WHERE media_id =:mediaId")
    int deleteByMediaId(int i);

    @Query("DELETE FROM media_playlist_item WHERE media_id IN (:mediaIds)")
    int deleteByMediaIds(List<Integer> list);

    @Query("DELETE FROM media_playlist_item WHERE playlist_id =:playlistId AND media_id =:mediaId")
    int deleteByPlayListId(int i, int i2);

    @Query("DELETE FROM media_playlist_item WHERE playlist_id =:playlistId AND media_id IN (:mediaIds)")
    int deleteByPlayListIds(int i, List<Integer> list);

    @Delete
    int deleteMultiple(List<PlayListMediaItem> list);

    @Delete
    int deleteSingle(PlayListMediaItem playListMediaItem);

    @Query("SELECT * FROM media_playlist_item WHERE playlist_id = :playListId AND media_id = :mediaId")
    PlayListMediaItem getByIds(int i, int i2);

    @Query("SELECT * FROM media_playlist_item WHERE media_id = :mediaId")
    List<PlayListMediaItem> getByMediaId(int i);

    @Query("SELECT * FROM media_playlist_item WHERE media_id IN (:mediaIds)")
    List<PlayListMediaItem> getByMediaIds(List<Integer> list);

    @Query("SELECT media_id FROM media_playlist_item WHERE playlist_id = :playListId")
    List<Integer> getByPlayListId(long j);

    @Query("SELECT * FROM media_playlist_item WHERE playlist_id = :playlistId LIMIT :limitCount")
    List<PlayListMediaItem> getByPlaylistId(int i, int i2);

    @Query("SELECT * FROM media_playlist_item WHERE playlist_id IN (:playlistIds) LIMIT :limitCount")
    List<PlayListMediaItem> getByPlaylistIds(List<Long> list, int i);

    @Query("\n        SELECT \n            m.playlist_id, \n            m.media_id AS id, \n            m._data AS mediaPath \n        FROM \n            media_playlist_item m \n        INNER JOIN \n            playlist_item p \n        ON \n            m.playlist_id = p.id \n        WHERE \n            p.category = 2 AND p.create_type = 1\n        ")
    List<hp3> getFavoriteAudioMediaPathsGroup();

    @Query("\n        SELECT \n            m.playlist_id, \n            m.media_id AS id, \n            m._data AS mediaPath \n        FROM \n            media_playlist_item m \n        INNER JOIN \n            playlist_item p \n        ON \n            m.playlist_id = p.id \n        WHERE \n            p.category = 2 AND p.create_type = 2\n        ")
    List<hp3> getFavoriteVideoMediaPathsGroup();

    @Query("SELECT p.id, p.name, COUNT(m.id) as count,p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON p.id = m.playlist_id WHERE p.create_type = :createType AND p.category != 2 GROUP BY p.id ORDER BY CASE p.category WHEN 1 THEN 0 ELSE 2 END, p.create_time DESC LIMIT :limitCount")
    LiveData<List<PlayListFolderItem>> getNonFavoritePlayListsWithLiveData(int i, @IntRange(from = 1, to = Long.MAX_VALUE) int i2);

    @Query("SELECT * FROM media_playlist_item WHERE playlist_id = :playListId AND _data = :data ")
    List<PlayListMediaItem> getPlayListElementByCombine(long j, String str);

    @Query("SELECT p.id, p.name, COUNT(m.id) as count, p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON p.id = m.playlist_id WHERE p.create_type = :createType AND (:includeRecent = 1 OR p.category != 1) AND (:includeFavorite = 1 OR p.category != 2) GROUP BY p.id, p.name ORDER BY CASE WHEN p.category = 1 THEN 0 WHEN p.category = 2 THEN 1 ELSE 2 END, p.create_time DESC")
    List<PlayListFolderItem> getPlayListFolderSetConditional(int i, boolean z, boolean z2);

    @Query("SELECT p.id, p.name, COUNT(m.id) as count, p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON p.id = m.playlist_id WHERE p.create_type = :createType AND (:includeRecent = 1 OR p.category != 1) AND (:includeFavorite = 1 OR p.category != 2) GROUP BY p.id, p.name ORDER BY CASE WHEN p.category = 1 THEN 0 WHEN p.category = 2 THEN 1 ELSE 2 END, p.create_time DESC")
    LiveData<List<PlayListFolderItem>> getPlayListFolderSetConditionalWithLiveData(int i, boolean z, boolean z2);

    @Query("SELECT p.id, p.name, COUNT(m.id) as count, p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON p.id = m.playlist_id WHERE p.create_type = :createType GROUP BY p.id, p.name ORDER BY CASE WHEN p.category = 1 THEN 0 WHEN p.category = 2 THEN 1 ELSE 2 END, p.create_time DESC")
    LiveData<List<PlayListFolderItem>> getPlayListFolderSetWithLiveData(int i);

    @Query("SELECT p.id, p.name, COUNT(m.id) as count, p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON m.playlist_id = p.id WHERE p.create_type = :createType GROUP BY p.id ORDER BY (CASE p.category WHEN 1 THEN 0 WHEN 2 THEN 1 ELSE 2 END), p.create_time DESC LIMIT :limitCount")
    LiveData<List<PlayListFolderItem>> getPlayListFolderSetWithLiveData(int i, @IntRange(from = 1, to = Long.MAX_VALUE) int i2);

    @Query("SELECT p.id, p.name, COUNT(m.id) as count, p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON p.id = m.playlist_id WHERE p.id = :playListId AND p.create_type = :createType GROUP BY p.id")
    LiveData<PlayListFolderItem> getPlayListFolderWithLiveData(int i, long j);

    @Query("SELECT m.* FROM media_playlist_item m INNER JOIN playlist_item p ON m.playlist_id = p.id WHERE (:createType IS NULL OR p.create_type = :createType) AND (:playListId IS NULL OR p.id = :playListId) AND (:isFavorite IS NULL OR (p.category = 2) = :isFavorite) ORDER BY m.record_time DESC LIMIT :limitCount")
    LiveData<List<PlayListMediaItem>> getPlayListMediaItemsLiveData(Integer num, Long l, Boolean bool, @IntRange(from = 1, to = Long.MAX_VALUE) int i);

    @Query("SELECT p.id, p.name, COUNT(m.id) as count, p.category FROM playlist_item p LEFT JOIN media_playlist_item m ON p.id = m.playlist_id WHERE p.create_type = :createType GROUP BY p.id, p.name ORDER BY CASE WHEN p.category = 1 THEN 0 WHEN p.category = 2 THEN 1 ELSE 2 END, p.create_time DESC")
    List<PlayListFolderItem> getPlayListWithCount(int i);

    @Insert
    List<Long> insertMultiple(List<PlayListMediaItem> list);

    @Insert
    long insertSingle(PlayListMediaItem playListMediaItem);

    @Update(onConflict = 1)
    int updateMultiple(List<PlayListMediaItem> list);

    @Query("UPDATE media_playlist_item SET media_id = :mediaId WHERE _data = :dataPath")
    int updatePath(int i, String str);

    @Update(onConflict = 1)
    int updateSingle(PlayListMediaItem playListMediaItem);
}
