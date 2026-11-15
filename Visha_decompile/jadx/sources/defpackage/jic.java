package defpackage;

import androidx.p004lifecycle.LiveData;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.Update;
import com.transsion.sniffer_load.data.WebPreviewRecord;
import java.util.List;

public interface jic {
    @Insert(entity = WebPreviewRecord.class)
    long addWebPreviewRecord(WebPreviewRecord webPreviewRecord);

    @Query("DELETE FROM WebPreviewRecord")
    void deleteAll();

    @Query("DELETE FROM WebPreviewRecord WHERE id =:id")
    void deleteItem(long j);

    @Query("select * FROM WebPreviewRecord ORDER BY id ASC")
    List<WebPreviewRecord> getAllByAsc();

    @Query("select * FROM WebPreviewRecord ORDER BY id DESC")
    List<WebPreviewRecord> getAllByDESC();

    @Query("SELECT * FROM WebPreviewRecord  ORDER BY id DESC")
    LiveData<List<WebPreviewRecord>> getAllWebPreviewRecordDESC();

    @Update(entity = WebPreviewRecord.class)
    void update(WebPreviewRecord webPreviewRecord);

    @Update(entity = WebPreviewRecord.class)
    void update(List<WebPreviewRecord> list);
}
