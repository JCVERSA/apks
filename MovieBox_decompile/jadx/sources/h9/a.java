package h9;

import android.database.sqlite.SQLiteDatabase;

public interface a {
    SQLiteDatabase getReadableDatabase();

    SQLiteDatabase getWritableDatabase();
}
