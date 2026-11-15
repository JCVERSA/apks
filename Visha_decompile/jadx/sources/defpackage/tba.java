package defpackage;

import android.database.Cursor;
import androidx.room.Insert;
import androidx.room.Query;
import androidx.room.RawQuery;
import androidx.room.Update;
import androidx.sqlite.db.SupportSQLiteQuery;
import java.util.List;

public interface tba {
    @Update
    int a(List<kmb> list);

    @RawQuery(observedEntities = {kmb.class})
    Cursor a(SupportSQLiteQuery supportSQLiteQuery);

    @Query("DELETE FROM cloudList_room")
    void a();

    @RawQuery
    int b(SupportSQLiteQuery supportSQLiteQuery);

    @Insert(onConflict = 1)
    void b(List<kmb> list);
}
