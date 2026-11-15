package defpackage;

import android.database.Cursor;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.RawQuery;
import androidx.room.Update;
import androidx.sqlite.db.SupportSQLiteQuery;
import java.util.List;

public interface ufd {
    @Update
    int a(List<pid> list);

    @RawQuery(observedEntities = {pid.class})
    Cursor a(SupportSQLiteQuery supportSQLiteQuery);

    @Query("DELETE FROM adList_room")
    void a();

    @RawQuery
    int b(SupportSQLiteQuery supportSQLiteQuery);

    @Insert(onConflict = 1)
    void b(List<pid> list);

    @Query("SELECT * FROM adList_room WHERE ad_creative_id IN (:ad_creative_ids)")
    List<pid> c(List<String> list);
}
