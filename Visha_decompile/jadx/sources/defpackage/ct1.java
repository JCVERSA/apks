package defpackage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.media3.exoplayer.rtsp.SessionDescription;

public class ct1 extends SQLiteOpenHelper implements bu9 {
    public static final String[] b = {"_id", "url", SessionDescription.ATTR_LENGTH, "mime"};

    public ct1(Context context) {
        super(context, "AndroidVideoCache.db", (SQLiteDatabase.CursorFactory) null, 1);
        ae8.d(context);
    }

    @Override
    public void a(String str, au9 au9Var) {
        ae8.a(str, au9Var);
        boolean z = get(str) != null;
        ContentValues contentValuesD = d(au9Var);
        if (z) {
            getWritableDatabase().update("SourceInfo", contentValuesD, "url=?", new String[]{str});
        } else {
            getWritableDatabase().insert("SourceInfo", null, contentValuesD);
        }
    }

    public final au9 b(Cursor cursor) {
        return new au9(cursor.getString(cursor.getColumnIndexOrThrow("url")), cursor.getLong(cursor.getColumnIndexOrThrow(SessionDescription.ATTR_LENGTH)), cursor.getString(cursor.getColumnIndexOrThrow("mime")));
    }

    public final ContentValues d(au9 au9Var) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("url", au9Var.a);
        contentValues.put(SessionDescription.ATTR_LENGTH, Long.valueOf(au9Var.b));
        contentValues.put("mime", au9Var.c);
        return contentValues;
    }

    @Override
    public au9 get(String str) throws Throwable {
        ae8.d(str);
        Cursor cursor = null;
        au9VarB = null;
        au9 au9VarB = null;
        try {
            Cursor cursorQuery = getReadableDatabase().query("SourceInfo", b, "url=?", new String[]{str}, null, null, null);
            if (cursorQuery != null) {
                try {
                    if (cursorQuery.moveToFirst()) {
                        au9VarB = b(cursorQuery);
                    }
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            return au9VarB;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        ae8.d(sQLiteDatabase);
        sQLiteDatabase.execSQL("CREATE TABLE SourceInfo (_id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,url TEXT NOT NULL,mime TEXT,length INTEGER);");
    }

    @Override
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        throw new IllegalStateException("Should not be called. There is no any migration");
    }
}
