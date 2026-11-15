package defpackage;

import android.database.sqlite.SQLiteDatabase;

public interface bt1 {
    SQLiteDatabase getReadableDatabase();

    SQLiteDatabase getWritableDatabase();
}
