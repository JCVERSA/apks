package defpackage;

import androidx.room.Insert;
import androidx.room.Query;
import com.transsion.sniffer_load.data.DownloadHistory;

public interface nz2 {
    @Insert(entity = DownloadHistory.class, onConflict = 1)
    void addDownloadHistory(DownloadHistory downloadHistory);

    @Query("select * FROM DownloadHistory WHERE mediaId=:id")
    DownloadHistory getDownloadHistory(String str);
}
