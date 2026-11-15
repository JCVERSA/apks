package b4;

import android.database.sqlite.SQLiteDatabase;
import kotlin.jvm.internal.Intrinsics;

public final class b implements y3.c {
    @Override
    public y3.b open(String fileName) {
        Intrinsics.h(fileName, "fileName");
        SQLiteDatabase sQLiteDatabaseOpenOrCreateDatabase = SQLiteDatabase.openOrCreateDatabase(fileName, (SQLiteDatabase.CursorFactory) null);
        Intrinsics.e(sQLiteDatabaseOpenOrCreateDatabase);
        return new a(sQLiteDatabaseOpenOrCreateDatabase);
    }
}
