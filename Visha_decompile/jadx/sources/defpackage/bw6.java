package defpackage;

import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.transsion.dbdata.beans.musicvideo.MusicVideoDataBean;
import java.util.List;

public interface bw6 {
    @Delete
    void delete(MusicVideoDataBean musicVideoDataBean);

    @Query("DELETE FROM music_video WHERE id = :id")
    void deleteById(int i);

    @Query("SELECT * FROM music_video")
    List<MusicVideoDataBean> getAll();

    @Query("SELECT * FROM music_video WHERE id IN (:userIds)")
    List<MusicVideoDataBean> getAllByIds(List<Integer> list);

    @Query("SELECT * FROM music_video WHERE title = :title AND id IN (:ids)")
    List<MusicVideoDataBean> getAllByTitleAndIds(String str, List<Integer> list);

    @Query("SELECT * FROM music_video WHERE id = :id")
    MusicVideoDataBean getMusicVideoById(int i);

    @Query("SELECT * FROM music_video WHERE title = :searchText OR displayName = :searchText")
    List<MusicVideoDataBean> getMusicVideoByTitleOrDisplay(String str);

    @Query("SELECT * FROM music_video WHERE displayName = :displayName")
    MusicVideoDataBean getMusicVideoListByDisplayName(String str);

    @Query("SELECT * FROM music_video WHERE data = :path")
    MusicVideoDataBean getMusicVideoListByPath(String str);

    @Insert(onConflict = 1)
    void insertAll(List<MusicVideoDataBean> list);

    @Update
    int update(MusicVideoDataBean musicVideoDataBean);
}
