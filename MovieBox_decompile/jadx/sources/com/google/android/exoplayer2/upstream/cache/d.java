package com.google.android.exoplayer2.upstream.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.exoplayer2.database.DatabaseIOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

final class d {

    private static final String[] f26561c = {"name", "length", "last_touch_timestamp"};

    private final h9.a f26562a;

    private String f26563b;

    public d(h9.a aVar) {
        this.f26562a = aVar;
    }

    private static void a(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
    }

    private Cursor c() {
        com.google.android.exoplayer2.util.a.e(this.f26563b);
        return this.f26562a.getReadableDatabase().query(this.f26563b, f26561c, null, null, null, null, null);
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
                    map.put((String) com.google.android.exoplayer2.util.a.e(cursorC.getString(0)), new c(cursorC.getLong(1), cursorC.getLong(2)));
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
            this.f26563b = d(hexString);
            if (h9.c.b(this.f26562a.getReadableDatabase(), 2, hexString) != 1) {
                SQLiteDatabase writableDatabase = this.f26562a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    h9.c.d(writableDatabase, 2, hexString, 1);
                    a(writableDatabase, this.f26563b);
                    writableDatabase.execSQL("CREATE TABLE " + this.f26563b + " (name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)");
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
        com.google.android.exoplayer2.util.a.e(this.f26563b);
        try {
            this.f26562a.getWritableDatabase().delete(this.f26563b, "name = ?", new String[]{str});
        } catch (SQLException e10) {
            throw new DatabaseIOException(e10);
        }
    }

    public void g(Set set) throws DatabaseIOException {
        com.google.android.exoplayer2.util.a.e(this.f26563b);
        try {
            SQLiteDatabase writableDatabase = this.f26562a.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    writableDatabase.delete(this.f26563b, "name = ?", new String[]{(String) it.next()});
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
        com.google.android.exoplayer2.util.a.e(this.f26563b);
        try {
            SQLiteDatabase writableDatabase = this.f26562a.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("name", str);
            contentValues.put("length", Long.valueOf(j10));
            contentValues.put("last_touch_timestamp", Long.valueOf(j11));
            writableDatabase.replaceOrThrow(this.f26563b, null, contentValues);
        } catch (SQLException e10) {
            throw new DatabaseIOException(e10);
        }
    }
}
