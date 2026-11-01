package u0;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import ru.zdevs.zarchiver.ZApp;

public final class a extends SQLiteOpenHelper {
    public a(ZApp zApp) {
        super(zApp, "za.db", (SQLiteDatabase.CursorFactory) null, 3);
    }

    @Override
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE FA (ID INTEGER PRIMARY KEY,EXT TEXT,PKG TEXT,CLS TEXT,SCHEME INTEGER, TYPE INTEGER)");
    }

    @Override
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
    }

    @Override
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i2, int i3) {
        if (i2 > 2 || i3 <= 2) {
            return;
        }
        sQLiteDatabase.execSQL("DROP TABLE FA");
        sQLiteDatabase.execSQL("CREATE TABLE FA (ID INTEGER PRIMARY KEY,EXT TEXT,PKG TEXT,CLS TEXT,SCHEME INTEGER, TYPE INTEGER)");
    }
}
