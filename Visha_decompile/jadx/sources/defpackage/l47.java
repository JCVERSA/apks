package defpackage;

import android.database.Cursor;
import androidx.room.RawQuery;
import androidx.room.Upsert;
import androidx.sqlite.db.SupportSQLiteQuery;

public interface l47 {
    @Upsert
    long a(qk8 qk8Var);

    @RawQuery(observedEntities = {qk8.class})
    Cursor a(SupportSQLiteQuery supportSQLiteQuery);

    @RawQuery
    int b(SupportSQLiteQuery supportSQLiteQuery);
}
