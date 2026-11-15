package com.yandex.mobile.ads.impl;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import androidx.annotation.WorkerThread;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

final class bn {
    private static final String[] c = {"name", SessionDescription.ATTR_LENGTH, "last_touch_timestamp"};
    private final zv a;
    private String b;

    public bn(k60 k60Var) {
        this.a = k60Var;
    }

    @WorkerThread
    public final HashMap a() throws yv {
        try {
            this.b.getClass();
            Cursor cursorQuery = this.a.getReadableDatabase().query(this.b, c, null, null, null, null, null);
            try {
                HashMap map = new HashMap(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    String string = cursorQuery.getString(0);
                    string.getClass();
                    map.put(string, new an(cursorQuery.getLong(1), cursorQuery.getLong(2)));
                }
                cursorQuery.close();
                return map;
            } catch (Throwable th) {
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
                throw th;
            }
        } catch (Throwable th3) {
            throw new yv(th3);
        }
    }

    @WorkerThread
    public final void a(long j) throws yv {
        try {
            String hexString = Long.toHexString(j);
            this.b = "ExoPlayerCacheFileMetadata" + hexString;
            if (jb2.a(this.a.getReadableDatabase(), 2, hexString) != 1) {
                SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    jb2.a(writableDatabase, 2, hexString, 1);
                    writableDatabase.execSQL("DROP TABLE IF EXISTS " + this.b);
                    writableDatabase.execSQL("CREATE TABLE " + this.b + " (name TEXT PRIMARY KEY NOT NULL,length INTEGER NOT NULL,last_touch_timestamp INTEGER NOT NULL)");
                    writableDatabase.setTransactionSuccessful();
                } finally {
                    writableDatabase.endTransaction();
                }
            }
        } catch (Throwable th) {
            throw new yv(th);
        }
    }

    @WorkerThread
    public final void a(String str) throws yv {
        this.b.getClass();
        try {
            this.a.getWritableDatabase().delete(this.b, "name = ?", new String[]{str});
        } catch (Throwable th) {
            throw new yv(th);
        }
    }

    @WorkerThread
    public final void a(Set<String> set) throws yv {
        this.b.getClass();
        try {
            SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
            writableDatabase.beginTransactionNonExclusive();
            try {
                Iterator<String> it = set.iterator();
                while (it.hasNext()) {
                    writableDatabase.delete(this.b, "name = ?", new String[]{it.next()});
                }
                writableDatabase.setTransactionSuccessful();
            } finally {
                writableDatabase.endTransaction();
            }
        } catch (Throwable th) {
            throw new yv(th);
        }
    }

    @WorkerThread
    public final void a(String str, long j, long j2) throws yv {
        this.b.getClass();
        try {
            SQLiteDatabase writableDatabase = this.a.getWritableDatabase();
            ContentValues contentValues = new ContentValues();
            contentValues.put("name", str);
            contentValues.put(SessionDescription.ATTR_LENGTH, Long.valueOf(j));
            contentValues.put("last_touch_timestamp", Long.valueOf(j2));
            writableDatabase.replaceOrThrow(this.b, null, contentValues);
        } catch (Throwable th) {
            throw new yv(th);
        }
    }
}
