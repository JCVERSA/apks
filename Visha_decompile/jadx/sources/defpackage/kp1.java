package defpackage;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;

public abstract class kp1 {
    public static boolean a(SQLiteDatabase sQLiteDatabase, qda qdaVar) {
        if (!b(sQLiteDatabase, qdaVar.a)) {
            return true;
        }
        Cursor cursorRawQuery = sQLiteDatabase.rawQuery("select * from " + qdaVar.a, null);
        if (cursorRawQuery == null) {
            return false;
        }
        try {
            int iC = qdaVar.c();
            if (iC != cursorRawQuery.getColumnCount()) {
                return true;
            }
            for (int i = 0; i < iC; i++) {
                if (qdaVar.d(cursorRawQuery.getColumnName(i)) == -1) {
                    return true;
                }
            }
            return false;
        } finally {
            cursorRawQuery.close();
        }
    }

    public static boolean b(SQLiteDatabase sQLiteDatabase, String str) {
        int i;
        if (str == null || sQLiteDatabase == null || !sQLiteDatabase.isOpen()) {
            return false;
        }
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = sQLiteDatabase.rawQuery("SELECT COUNT(*) FROM sqlite_master WHERE type = ? AND name = ?", new String[]{"table", str});
                if (!cursorRawQuery.moveToFirst()) {
                    cursorRawQuery.close();
                    return false;
                }
                i = cursorRawQuery.getInt(0);
                cursorRawQuery.close();
            } catch (Exception e) {
                ie7.a(e);
                if (cursorRawQuery != null) {
                    cursorRawQuery.close();
                }
                i = 0;
            }
            return i > 0;
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }
}
