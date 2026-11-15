package defpackage;

import androidx.p004lifecycle.LiveData;
import androidx.room.Delete;
import androidx.room.Insert;
import androidx.room.Query;
import com.transsion.dbdata.beans.SubtitleHistory;
import java.util.List;

public interface w4a {
    @Delete
    int deleteSubtitleHistory(SubtitleHistory subtitleHistory);

    @Delete
    int deleteSubtitleHistoryList(List<SubtitleHistory> list);

    @Insert(onConflict = 1)
    void insertSubtitleHistory(SubtitleHistory subtitleHistory);

    @Query("SELECT * FROM SubtitleHistory LIMIT :limit")
    List<SubtitleHistory> queryAllDownLoadSubtitle(int i);

    @Query("SELECT * FROM SubtitleHistory")
    LiveData<List<SubtitleHistory>> queryAllDownLoadSubtitleLiveData();
}
