package defpackage;

import androidx.p004lifecycle.LiveData;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.RewriteQueriesToDropUnusedColumns;
import com.transsion.dbdata.beans.onlinevideo.HistoryBean;
import com.transsion.dbdata.beans.onlinevideo.HistoryUserBean;
import java.util.List;

public interface sg7 {
    @Query("UPDATE online_user_history SET is_uploaded = 0")
    void changeAllUploadStatus();

    @Query("DELETE FROM online_user_history")
    int deleteAll();

    @Delete
    int deleteHistories(List<HistoryUserBean> list);

    @Delete
    int deleteHistory(HistoryUserBean historyUserBean);

    @Query("DELETE FROM online_user_history where is_uploaded == 0x00 or is_uploaded == 0x02")
    int deleteSyncUserHistory();

    @Query("DELETE FROM online_user_history where user_id=:userId")
    int deleteUserHistory(long j);

    @Query("DELETE FROM online_user_history where serialId=:sid")
    int deleteUserHistoryVideo(long j);

    @Query("SELECT * FROM online_user_history  where video_id=:vid ORDER BY last_watch_time DESC")
    List<HistoryUserBean> getAllHistoryByVideoId(long j);

    @Query("SELECT * FROM online_user_history ORDER BY last_watch_time DESC")
    List<HistoryUserBean> getAllHistoryUserBean();

    @Query("SELECT * FROM online_user_history where user_id=:userId")
    List<HistoryUserBean> getAllHistoryUserBeanByUserId(long j);

    @Query("SELECT * FROM online_user_history ORDER BY last_watch_time DESC")
    List<HistoryUserBean> getAllHistoryUserBeanData();

    @Query("SELECT * FROM online_user_history ORDER BY last_watch_time DESC")
    LiveData<List<HistoryUserBean>> getAllLiveHistoryUserBean();

    @Query("SELECT * FROM online_user_history ORDER BY last_watch_time DESC")
    List<HistoryUserBean> getAllLiveHistoryUserBeanList();

    @Query("SELECT * FROM online_user_history where is_uploaded <= 1  ORDER BY last_watch_time DESC")
    LiveData<List<HistoryUserBean>> getAllLiveHistoryUserBeanNotDelete();

    @Query("SELECT * FROM online_user_history where serialId=:id")
    @RewriteQueriesToDropUnusedColumns
    List<HistoryBean> getHistoryUserBean(long j);

    @Query("SELECT * FROM online_user_history where source_id=:id")
    @RewriteQueriesToDropUnusedColumns
    List<HistoryBean> getHistoryUserBeanBySourceId(String str);

    @Query("SELECT * FROM online_user_history where video_id=:video_id")
    @RewriteQueriesToDropUnusedColumns
    List<HistoryBean> getHistoryUserBeanByVideoId(long j);

    @Query("SELECT * FROM online_user_history where video_id=:video_id and is_intact == 1")
    List<HistoryUserBean> getHistoryUserBeanByVideoIdIntact(long j);

    @Query("SELECT * FROM online_user_history ORDER BY last_watch_time DESC LIMIT:count")
    List<HistoryUserBean> getHistoryUserBeanCount(int i);

    @Insert(onConflict = 1)
    void insertHistories(List<HistoryUserBean> list);

    @Insert(onConflict = 1)
    long insertHistory(HistoryUserBean historyUserBean);
}
