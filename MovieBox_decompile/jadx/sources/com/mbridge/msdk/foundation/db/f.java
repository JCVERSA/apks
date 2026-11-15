package com.mbridge.msdk.foundation.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;

public abstract class f {

    private a f34261a;

    private class a extends SQLiteOpenHelper {
        public a(Context context, String str, int i10) {
            super(context, str, (SQLiteDatabase.CursorFactory) null, i10);
            if (MBridgeConstans.DEBUG) {
                o0.a("DatabaseOpenHelper", "数据库： name :" + str + "  " + i10);
            }
        }

        @Override
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            if (MBridgeConstans.DEBUG) {
                o0.a("DatabaseOpenHelper", "数据库创建了");
            }
            f.this.a(sQLiteDatabase);
        }

        @Override
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            f.this.a(sQLiteDatabase, i10, i11);
        }

        @Override
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
            if (MBridgeConstans.DEBUG) {
                o0.a("DatabaseOpenHelper", "数据库升级了");
            }
            f.this.b(sQLiteDatabase, i10, i11);
        }
    }

    public f(Context context) {
        this.f34261a = new a(context, a(), b());
    }

    protected abstract String a();

    protected abstract void a(SQLiteDatabase sQLiteDatabase);

    protected abstract void a(SQLiteDatabase sQLiteDatabase, int i10, int i11);

    protected abstract int b();

    protected abstract void b(SQLiteDatabase sQLiteDatabase, int i10, int i11);

    public SQLiteDatabase c() {
        return this.f34261a.getReadableDatabase();
    }

    public synchronized SQLiteDatabase d() {
        SQLiteDatabase writableDatabase;
        try {
            writableDatabase = this.f34261a.getWritableDatabase();
        } catch (Exception unused) {
            writableDatabase = null;
        }
        return writableDatabase;
    }
}
