package defpackage;

import android.database.Cursor;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.RawQuery;
import androidx.room.Update;
import androidx.sqlite.db.SupportSQLiteQuery;
import com.cloud.hisavana.sdk.s;
import java.util.List;

public interface dgc {
    @Query("DELETE FROM retry_tracking_table_room WHERE create_time < :invalidTime")
    int a(long j);

    @Query("DELETE FROM retry_tracking_table_room WHERE uuid in (:uuids)")
    int a(String[] strArr);

    @RawQuery
    Cursor a(SupportSQLiteQuery supportSQLiteQuery);

    @Query("SELECT tracking_data FROM retry_tracking_table_room")
    List<String> a();

    @Insert(onConflict = 1)
    void a(s sVar);

    @Update
    int b(s sVar);

    @Query("DELETE FROM retry_tracking_table_room")
    void b();
}
