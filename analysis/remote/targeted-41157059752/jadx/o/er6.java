package o;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.snaptube.util.ProductionEnv;
import com.wandoujia.base.config.GlobalConfig;
import java.util.ArrayList;
import java.util.List;

public class er6 extends n70 {
    public er6(Context context) {
        super(context, "slog.db", null, 3);
    }

    public static void u0(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.endTransaction();
        } catch (Exception e) {
            ProductionEnv.logException("Slog_endTransactionFailed", e);
        }
    }

    public void d(String str) {
        if (str == null) {
            return;
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            try {
                writableDatabase.beginTransaction();
                writableDatabase.delete("tbl_slog_check", "path=?", new String[]{str});
                writableDatabase.setTransactionSuccessful();
            } catch (Exception e) {
                ProductionEnv.throwExceptForDebugging(e);
            }
            u0(writableDatabase);
        } catch (Throwable th) {
            u0(writableDatabase);
            throw th;
        }
    }

    public synchronized ul0 d0() {
        ul0 ul0Var;
        try {
            Cursor cursor = null;
            ul0Var = null;
            try {
                Cursor cursorQuery = getReadableDatabase().query("tbl_slog_check", null, "url is not null and path is not null", null, null, null, null, null);
                try {
                    if (cursorQuery.moveToFirst()) {
                        ul0Var = new ul0();
                        ul0Var.onReadFromDatabase(cursorQuery);
                    }
                    xe3.a(cursorQuery);
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    xe3.a(cursor);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            throw th3;
        }
        return ul0Var;
    }

    public void e(ul0 ul0Var) {
        if (ul0Var == null) {
            return;
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            try {
                writableDatabase.beginTransaction();
                writableDatabase.delete("tbl_slog_check", "_id=?", new String[]{ul0Var.getId() + ""});
                writableDatabase.setTransactionSuccessful();
            } catch (Exception e) {
                ProductionEnv.throwExceptForDebugging(e);
            }
            u0(writableDatabase);
        } catch (Throwable th) {
            u0(writableDatabase);
            throw th;
        }
    }

    public void f() {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            try {
                writableDatabase.beginTransaction();
                writableDatabase.delete("tbl_slog_download", null, null);
                writableDatabase.setTransactionSuccessful();
            } catch (Exception e) {
                ProductionEnv.throwExceptForDebugging(e);
            }
        } finally {
            u0(writableDatabase);
        }
    }

    @Override
    public SQLiteDatabase getReadableDatabase() {
        try {
            return super.getReadableDatabase();
        } catch (SQLiteException e) {
            String message = e.getMessage();
            if (TextUtils.isEmpty(message) || !message.contains("upgrade read-only database")) {
                throw e;
            }
            return getWritableDatabase();
        }
    }

    @Override
    public SQLiteDatabase getWritableDatabase() {
        try {
            return super.getWritableDatabase();
        } catch (Exception unused) {
            return SQLiteDatabase.openDatabase(GlobalConfig.getAppContext().getDatabasePath("slog.db").toString(), null, 16);
        }
    }

    public final long h0(String str, kb1 kb1Var) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        kb1Var.onAddToDatabase(contentValues);
        return writableDatabase.insert(str, null, contentValues);
    }

    public void i(vk6 vk6Var) {
        if (vk6Var == null) {
            return;
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            try {
                writableDatabase.beginTransaction();
                writableDatabase.delete("tbl_slog_report", "_id=?", new String[]{vk6Var.getId() + ""});
                writableDatabase.setTransactionSuccessful();
            } catch (Exception e) {
                ProductionEnv.throwExceptForDebugging(e);
            }
            u0(writableDatabase);
        } catch (Throwable th) {
            u0(writableDatabase);
            throw th;
        }
    }

    public void k(String str) {
        SQLiteDatabase writableDatabase = getWritableDatabase();
        try {
            try {
                writableDatabase.beginTransaction();
                writableDatabase.delete("tbl_slog_report", "tag=?", new String[]{str});
                writableDatabase.setTransactionSuccessful();
            } catch (Exception e) {
                ProductionEnv.throwExceptForDebugging(e);
            }
            u0(writableDatabase);
        } catch (Throwable th) {
            u0(writableDatabase);
            throw th;
        }
    }

    public final void l(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS tbl_slog_check (_id INTEGER PRIMARY KEY AUTOINCREMENT,tag VARCHAR(255),url TEXT,add_time INTEGER,path VARCHAR(2048),next_check INTEGER,extras TEXT);CREATE INDEX IF NOT EXISTS tag_idx ON tbl_slog_check( tag );");
    }

    public long m0(ul0 ul0Var) {
        if (ul0Var == null) {
            return -1L;
        }
        return h0("tbl_slog_check", ul0Var);
    }

    public long n0(wu1 wu1Var) {
        if (wu1Var == null) {
            return -1L;
        }
        return h0("tbl_slog_download", wu1Var);
    }

    public final void o(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS tbl_slog_download (_id INTEGER PRIMARY KEY AUTOINCREMENT,type TEXT,source TEXT,file TEXT,downloadUrl TEXT,addTime INTEGER);");
    }

    @Override
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        s(sQLiteDatabase);
        q(sQLiteDatabase);
    }

    @Override
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (i > i2) {
            s(sQLiteDatabase);
            q(sQLiteDatabase);
        }
    }

    @Override
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        ProductionEnv.d("SLogDBHelper", "oldVersion: " + i + ", newVersion: " + i2);
        if (i < i2) {
            s(sQLiteDatabase);
            q(sQLiteDatabase);
        }
    }

    public final void p(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS tbl_slog_report (_id INTEGER PRIMARY KEY AUTOINCREMENT,file_name TEXT,tag VARCHAR(255),url TEXT,add_time INTEGER,last_attempt INTEGER,attempt TINYINT,extras TEXT);CREATE INDEX IF NOT EXISTS tag_idx ON tbl_slog_report( tag );CREATE INDEX IF NOT EXISTS add_time_idx ON tbl_slog_report( add_time ASC );");
    }

    public void p0() {
        if (x("logcat") == null) {
            m0(new ul0("logcat"));
        }
    }

    public final void q(SQLiteDatabase sQLiteDatabase) {
        p(sQLiteDatabase);
        l(sQLiteDatabase);
        o(sQLiteDatabase);
    }

    public long q0(vk6 vk6Var) {
        return h0("tbl_slog_report", vk6Var);
    }

    public final void r(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
    }

    public wu1 r0(String str) throws Throwable {
        Cursor cursor = null;
        wu1 wu1Var = null;
        try {
            Cursor cursorQuery = getReadableDatabase().query("tbl_slog_download", null, "file=?", new String[]{str}, null, null, null, null);
            try {
                if (cursorQuery.getCount() > 0) {
                    cursorQuery.moveToFirst();
                    wu1Var = new wu1();
                    wu1Var.onReadFromDatabase(cursorQuery);
                }
                xe3.a(cursorQuery);
                return wu1Var;
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
                xe3.a(cursor);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public final void s(SQLiteDatabase sQLiteDatabase) {
        r(sQLiteDatabase, "tbl_slog_report");
        r(sQLiteDatabase, "tbl_slog_check");
        r(sQLiteDatabase, "tbl_slog_download");
    }

    public wu1 s0(String str) throws Throwable {
        Cursor cursor = null;
        wu1 wu1Var = null;
        try {
            Cursor cursorQuery = getReadableDatabase().query("tbl_slog_download", null, "source=?", new String[]{str}, null, null, null, null);
            try {
                if (cursorQuery.getCount() > 0) {
                    cursorQuery.moveToFirst();
                    wu1Var = new wu1();
                    wu1Var.onReadFromDatabase(cursorQuery);
                }
                xe3.a(cursorQuery);
                return wu1Var;
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
                xe3.a(cursor);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public synchronized List t() {
        ArrayList arrayList;
        try {
            Cursor cursorQuery = null;
            try {
                cursorQuery = getReadableDatabase().query("tbl_slog_check", null, "url is not null and path is not null", null, null, null, null, null);
                arrayList = new ArrayList(cursorQuery.getCount());
                while (cursorQuery.moveToNext()) {
                    ul0 ul0Var = new ul0();
                    ul0Var.onReadFromDatabase(cursorQuery);
                    arrayList.add(ul0Var);
                }
                xe3.a(cursorQuery);
            } catch (Throwable th) {
                xe3.a(cursorQuery);
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return uu0.a(arrayList);
    }

    public List t0(int i) {
        SQLiteDatabase readableDatabase = getReadableDatabase();
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            int i2 = 2 << 0;
            cursorQuery = readableDatabase.query("tbl_slog_download", null, null, null, null, null, "addTime DESC", i + "");
            while (cursorQuery.moveToNext()) {
                wu1 wu1Var = new wu1();
                wu1Var.onReadFromDatabase(cursorQuery);
                arrayList.add(wu1Var);
            }
            xe3.a(cursorQuery);
            return arrayList;
        } catch (Throwable th) {
            xe3.a(cursorQuery);
            throw th;
        }
    }

    public List u() {
        Cursor cursorQuery = null;
        try {
            cursorQuery = getReadableDatabase().query("tbl_slog_report", null, null, null, null, null, "add_time DESC", null);
            ArrayList arrayList = new ArrayList(cursorQuery.getCount());
            while (cursorQuery.moveToNext()) {
                vk6 vk6Var = new vk6();
                vk6Var.onReadFromDatabase(cursorQuery);
                arrayList.add(vk6Var);
            }
            xe3.a(cursorQuery);
            return uu0.a(arrayList);
        } catch (Throwable th) {
            xe3.a(cursorQuery);
            throw th;
        }
    }

    public boolean v0(ul0 ul0Var) {
        if (ul0Var == null) {
            return false;
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        ul0Var.onAddToDatabase(contentValues);
        long jUpdate = 0;
        try {
            try {
                writableDatabase.beginTransaction();
                jUpdate = writableDatabase.update("tbl_slog_check", contentValues, "_id=?", new String[]{ul0Var.getId() + ""});
                writableDatabase.setTransactionSuccessful();
            } catch (Exception e) {
                ProductionEnv.throwExceptForDebugging(e);
            }
            u0(writableDatabase);
            return jUpdate == 1;
        } catch (Throwable th) {
            u0(writableDatabase);
            throw th;
        }
    }

    public synchronized ul0 w(String str) {
        ul0 ul0Var;
        try {
            Cursor cursor = null;
            ul0Var = null;
            try {
                Cursor cursorQuery = getReadableDatabase().query("tbl_slog_check", null, "path=?", new String[]{str}, null, null, null, null);
                try {
                    if (cursorQuery.getCount() > 0) {
                        cursorQuery.moveToFirst();
                        ul0Var = new ul0();
                        ul0Var.onReadFromDatabase(cursorQuery);
                    }
                    xe3.a(cursorQuery);
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    xe3.a(cursor);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            throw th3;
        }
        return ul0Var;
    }

    public boolean w0(wu1 wu1Var) {
        if (wu1Var == null) {
            return false;
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        wu1Var.onAddToDatabase(contentValues);
        long jUpdate = 0;
        try {
            try {
                writableDatabase.beginTransaction();
                jUpdate = writableDatabase.update("tbl_slog_download", contentValues, "_id=?", new String[]{wu1Var.getId() + ""});
                writableDatabase.setTransactionSuccessful();
            } catch (Exception e) {
                ProductionEnv.throwExceptForDebugging(e);
            }
            u0(writableDatabase);
            return jUpdate >= 1;
        } catch (Throwable th) {
            u0(writableDatabase);
            throw th;
        }
    }

    public synchronized ul0 x(String str) {
        ul0 ul0Var;
        try {
            Cursor cursor = null;
            ul0Var = null;
            try {
                boolean z = false;
                Cursor cursorQuery = getReadableDatabase().query("tbl_slog_check", null, "tag=?", new String[]{str}, null, null, null, null);
                try {
                    if (cursorQuery.getCount() > 0) {
                        cursorQuery.moveToFirst();
                        ul0Var = new ul0();
                        ul0Var.onReadFromDatabase(cursorQuery);
                    }
                    xe3.a(cursorQuery);
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    xe3.a(cursor);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            throw th3;
        }
        return ul0Var;
    }

    public boolean x0(ul0 ul0Var) {
        if (ul0Var == null) {
            return false;
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        ul0Var.onAddToDatabase(contentValues);
        long jUpdate = 0;
        try {
            try {
                writableDatabase.beginTransaction();
                jUpdate = writableDatabase.update("tbl_slog_check", contentValues, "tag=?", new String[]{"logcat"});
                writableDatabase.setTransactionSuccessful();
            } catch (Exception e) {
                ProductionEnv.throwExceptForDebugging(e);
            }
            u0(writableDatabase);
            return jUpdate >= 1;
        } catch (Throwable th) {
            u0(writableDatabase);
            throw th;
        }
    }

    public synchronized vk6 y(String str) {
        vk6 vk6Var;
        try {
            Cursor cursor = null;
            vk6Var = null;
            try {
                Cursor cursorQuery = getReadableDatabase().query("tbl_slog_report", null, "file_name=?", new String[]{str}, null, null, null, null);
                try {
                    if (cursorQuery.getCount() > 0) {
                        cursorQuery.moveToFirst();
                        vk6Var = new vk6();
                        vk6Var.onReadFromDatabase(cursorQuery);
                    }
                    xe3.a(cursorQuery);
                } catch (Throwable th) {
                    th = th;
                    cursor = cursorQuery;
                    xe3.a(cursor);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            throw th3;
        }
        return vk6Var;
    }

    public boolean y0(vk6 vk6Var) {
        if (vk6Var == null) {
            return false;
        }
        SQLiteDatabase writableDatabase = getWritableDatabase();
        ContentValues contentValues = new ContentValues();
        vk6Var.onAddToDatabase(contentValues);
        long jUpdate = 0;
        try {
            try {
                writableDatabase.beginTransaction();
                jUpdate = writableDatabase.update("tbl_slog_report", contentValues, "_id=?", new String[]{vk6Var.getId() + ""});
                writableDatabase.setTransactionSuccessful();
            } catch (Exception e) {
                ProductionEnv.throwExceptForDebugging(e);
            }
            u0(writableDatabase);
            return jUpdate >= 1;
        } catch (Throwable th) {
            u0(writableDatabase);
            throw th;
        }
    }
}
