package ee;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class d extends SQLiteOpenHelper {
    public d(Context context) {
        super(context, "CloudControl.db", (SQLiteDatabase.CursorFactory) null, 2);
    }

    @Override
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS cloudList(_id INTEGER PRIMARY KEY, codeSeatId VARCHAR(50) NOT NULL, json TEXT);");
    }

    @Override
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
    }
}
