package defpackage;

import androidx.p004lifecycle.LiveData;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.RewriteQueriesToDropUnusedColumns;
import com.transsion.dbdata.beans.onlinevideo.HistoryBean;
import java.util.List;

public interface zf7 {
    @Query("DELETE FROM online_history")
    int deleteAll();

    @Delete
    int deleteHistories(List<HistoryBean> list);

    @Delete
    int deleteHistory(HistoryBean historyBean);

    @Query("DELETE FROM online_history where user_id=:userId")
    int deleteUserHistory(long j);

    @Query("SELECT * FROM online_history ORDER BY last_watch_time DESC")
    List<HistoryBean> getAllHistoryBean();

    @Query("SELECT * FROM online_history ORDER BY last_watch_time DESC")
    List<HistoryBean> getAllHistoryBeanData();

    @Query("SELECT * FROM online_history  where video_id=:vid ORDER BY last_watch_time DESC")
    List<HistoryBean> getAllHistoryByVideoId(long j);

    @Query("SELECT * FROM online_history  where video_id=:vid and is_intact = 1 ORDER BY last_watch_time DESC")
    List<HistoryBean> getAllHistoryByVideoIdIntact(long j);

    @Query("SELECT * FROM online_history ORDER BY last_watch_time DESC")
    LiveData<List<HistoryBean>> getAllLiveHistoryBean();

    @Query("SELECT * FROM online_history where serialId=:id")
    List<HistoryBean> getHistoryBean(long j);

    @Query("SELECT * FROM online_history ORDER BY last_watch_time DESC LIMIT:count")
    List<HistoryBean> getHistoryBeanCount(int i);

    @Query("SELECT * FROM online_history where source_id=:id")
    @RewriteQueriesToDropUnusedColumns
    List<HistoryBean> getHistoryUserBeanBySourceId(String str);

    @Query("SELECT * FROM online_history where is_youtube=1")
    @RewriteQueriesToDropUnusedColumns
    List<HistoryBean> getYoutubeHistoryBeans();

    @Insert(onConflict = 1)
    void insertHistories(List<HistoryBean> list);

    @Insert(onConflict = 1)
    long insertHistory(HistoryBean historyBean);
}
