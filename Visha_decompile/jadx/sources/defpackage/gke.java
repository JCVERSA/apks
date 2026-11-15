package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.c;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.File;
import java.util.Collections;
import java.util.HashSet;

public abstract class gke {
    /* JADX WARN: Code duplicated, block: B:49:0x00de  */
    public static void a(c cVar, SQLiteDatabase sQLiteDatabase, String str, String str2, String str3, String[] strArr) throws Throwable {
        SQLiteException e;
        Cursor cursorQuery;
        if (cVar == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        Cursor cursor = null;
        try {
            cursorQuery = sQLiteDatabase.query("SQLITE_MASTER", new String[]{"name"}, "name=?", new String[]{str}, null, null, null);
            try {
                try {
                    boolean zMoveToFirst = cursorQuery.moveToFirst();
                    cursorQuery.close();
                    if (!zMoveToFirst) {
                        sQLiteDatabase.execSQL(str2);
                    }
                } catch (SQLiteException e2) {
                    e = e2;
                    cVar.v().c("Error querying for table", str, e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                }
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (SQLiteException e3) {
            e = e3;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
        try {
            HashSet hashSet = new HashSet();
            Cursor cursorRawQuery = sQLiteDatabase.rawQuery("SELECT * FROM " + str + " LIMIT 0", null);
            try {
                Collections.addAll(hashSet, cursorRawQuery.getColumnNames());
                cursorRawQuery.close();
                for (String str4 : str3.split(StringUtils.COMMA)) {
                    if (!hashSet.remove(str4)) {
                        throw new SQLiteException("Table " + str + " is missing required column: " + str4);
                    }
                }
                if (strArr != null) {
                    for (int i = 0; i < strArr.length; i += 2) {
                        if (!hashSet.remove(strArr[i])) {
                            sQLiteDatabase.execSQL(strArr[i + 1]);
                        }
                    }
                }
                if (hashSet.isEmpty()) {
                    return;
                }
                cVar.v().c("Table has extra columns. table, columns", str, TextUtils.join(", ", hashSet));
            } catch (Throwable th3) {
                cursorRawQuery.close();
                throw th3;
            }
        } catch (SQLiteException e4) {
            cVar.q().b("Failed to verify columns on table that was just created", str);
            throw e4;
        }
    }

    public static void b(c cVar, SQLiteDatabase sQLiteDatabase) {
        if (cVar == null) {
            throw new IllegalArgumentException("Monitor must not be null");
        }
        File file = new File(sQLiteDatabase.getPath());
        if (!file.setReadable(false, false)) {
            cVar.v().a("Failed to turn off database read permission");
        }
        if (!file.setWritable(false, false)) {
            cVar.v().a("Failed to turn off database write permission");
        }
        if (!file.setReadable(true, true)) {
            cVar.v().a("Failed to turn on database read permission for owner");
        }
        if (file.setWritable(true, true)) {
            return;
        }
        cVar.v().a("Failed to turn on database write permission for owner");
    }
}
