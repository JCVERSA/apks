package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import org.mozilla.javascript.ES6Iterator;

public abstract class a5 {
    public static int a(SQLiteDatabase sQLiteDatabase, int i) {
        int i2 = 0;
        if (i == 2) {
            return 0;
        }
        Cursor cursorG = g(sQLiteDatabase, i);
        if (cursorG.getCount() > 0) {
            cursorG.moveToNext();
            i2 = cursorG.getInt(cursorG.getColumnIndexOrThrow(ES6Iterator.VALUE_PROPERTY));
        }
        cursorG.close();
        return i2;
    }

    public static long b(SQLiteDatabase sQLiteDatabase, int i) {
        long j;
        Cursor cursorG = g(sQLiteDatabase, 2);
        if (cursorG.getCount() > 0) {
            cursorG.moveToNext();
            j = cursorG.getLong(cursorG.getColumnIndexOrThrow(ES6Iterator.VALUE_PROPERTY));
        } else {
            j = 0;
        }
        cursorG.close();
        return j;
    }

    public static void c(SQLiteDatabase sQLiteDatabase, long j, byte[] bArr) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("timestamp", Long.valueOf(j));
        contentValues.put("serialized_proto_data", bArr);
        if (sQLiteDatabase.update("offline_signal_contents", contentValues, "timestamp = ?", new String[]{String.valueOf(j)}) == 0) {
            sQLiteDatabase.insert("offline_signal_contents", null, contentValues);
        }
    }

    public static void d(SQLiteDatabase sQLiteDatabase) {
        h(sQLiteDatabase, "failed_requests", 0);
        h(sQLiteDatabase, "total_requests", 0);
        h(sQLiteDatabase, "completed_requests", 0);
        ContentValues contentValues = new ContentValues();
        contentValues.put("statistic_name", "last_successful_request_time");
        contentValues.put(ES6Iterator.VALUE_PROPERTY, (Long) 0L);
        sQLiteDatabase.insert("offline_signal_statistics", null, contentValues);
    }

    public static void e(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.delete("offline_signal_contents", null, null);
        i(sQLiteDatabase, "failed_requests", 0);
        i(sQLiteDatabase, "total_requests", 0);
        i(sQLiteDatabase, "completed_requests", 0);
    }

    public static void f(SQLiteDatabase sQLiteDatabase, boolean z, boolean z2) {
        if (!z2) {
            sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = '%s'", "total_requests"));
            return;
        }
        sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = '%s'", "completed_requests"));
        if (z) {
            return;
        }
        sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = '%s'", "failed_requests"));
    }

    public static Cursor g(SQLiteDatabase sQLiteDatabase, int i) {
        String[] strArr = {ES6Iterator.VALUE_PROPERTY};
        String[] strArr2 = new String[1];
        if (i == 0) {
            strArr2[0] = "failed_requests";
        } else if (i == 1) {
            strArr2[0] = "total_requests";
        } else if (i != 2) {
            strArr2[0] = "completed_requests";
        } else {
            strArr2[0] = "last_successful_request_time";
        }
        return sQLiteDatabase.query("offline_signal_statistics", strArr, "statistic_name = ?", strArr2, null, null, null);
    }

    public static void h(SQLiteDatabase sQLiteDatabase, String str, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("statistic_name", str);
        contentValues.put(ES6Iterator.VALUE_PROPERTY, (Integer) 0);
        sQLiteDatabase.insert("offline_signal_statistics", null, contentValues);
    }

    public static void i(SQLiteDatabase sQLiteDatabase, String str, int i) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(ES6Iterator.VALUE_PROPERTY, (Integer) 0);
        sQLiteDatabase.update("offline_signal_statistics", contentValues, "statistic_name = ?", new String[]{str});
    }
}
