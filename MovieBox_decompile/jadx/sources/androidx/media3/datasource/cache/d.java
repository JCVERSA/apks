package androidx.media3.datasource.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import androidx.media3.database.DatabaseIOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class d {

    private static final String[] f10502c = {"name", "length", "last_touch_timestamp"};

    private final v1.a f10503a;

    private String f10504b;

    public d(v1.a aVar) {
        this.f10503a = aVar;
    }

    private static void a(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
    }

    private Cursor c() {
        androidx.media3.common.util.a.e(this.f10504b);
        return this.f10503a.getReadableDatabase().query(this.f10504b, f10502c, null, null, null, null, null);
    }

    private static String d(String str) {
        return "ExoPlayerCacheFileMetadata" + str;
    }

    public Map b() throws DatabaseIOException {
        try {
            Cursor cursorC = c();
            try {
                HashMap map = new HashMap(cursorC.getCount());
                while (cursorC.moveToNext()) {
                    map.put((String) androidx.media3.common.util.a.e(cursorC.getString(0)), new c(cursorC.getLong(1), cursorC.getLong(2)));
                }
                cursorC.close();
                return map;
            } catch (Throwable th2) {
                if (cursorC != null) {
                    try {
                        cursorC.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        } catch (SQLException e10) {
            throw new DatabaseIOException(e10);
        }
    }

    public void e(long j10) throws DatabaseIOException {
        try {
            String hexString = Long.toHexString(j10);
            this.f10504b = d(hexString);
            if (v1.c.b(this.f10503a.getReadableDatabase(), 2, hexString) != 1) {
                SQLiteDatabase writableDatabase = this.f10503a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    v1.c.d(writableDatabase, 2, hexString, 1);
                    a(writableDatabase, this.f10504b);
                    writableDatabase.execSQL("CREATE TABLE " + this.f10504b + " (name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)");
                    writableDatabase.setTransactionSuccessful();
                } finally {
                    writableDatabase.endTransaction();
                }
            }
        } catch (SQLException e10) {
            throw new DatabaseIOException(e10);
        }
    }

    public void f(String str) throws DatabaseIOException {
        androidx.media3.common.util.a.e(this.f10504b);
        try {
            this.f10503a.getWritableDatabase().delete(this.f10504b, "name = ?", new String[]{str});
        } catch (SQLException e10) {
            throw new DatabaseIOException(e10);
        }
    }

    public void g(Set set) throws DatabaseIOException {
        androidx.media3.common.util.a.e(this.f10504b);
        try {
            SQLiteDatabase writableDatabase = this.f10503a.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    writableDatabase.delete(this.f10504b, "name = ?", new String[]{(String) it.next()});
                }
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        } catch (SQLException e10) {
            throw new DatabaseIOException(e10);
        }
    }

    public void h(String str, long j10, long j11) throws DatabaseIOException {
        androidx.media3.common.util.a.e(this.f10504b);
        try {
            SQLiteDatabase writableDatabase = this.f10503a.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("name", str);
            contentValues.put("length", Long.valueOf(j10));
            contentValues.put("last_touch_timestamp", Long.valueOf(j11));
            writableDatabase.replaceOrThrow(this.f10504b, null, contentValues);
        } catch (SQLException e10) {
            throw new DatabaseIOException(e10);
        }
    }
}
