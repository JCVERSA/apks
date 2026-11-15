package com.mbridge.msdk.tracker;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;

class b extends SQLiteOpenHelper {

    private final String f37665a;

    public b(Context context, String str, String str2) {
        super(context, str, (SQLiteDatabase.CursorFactory) null, 2);
        this.f37665a = str2;
    }

    @Override
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        if (y.b(sQLiteDatabase)) {
            return;
        }
        try {
            sQLiteDatabase.execSQL(String.format(i.f37684i, this.f37665a));
        } catch (Exception e10) {
            if (a.f37664a) {
                Log.e("TrackManager", "create table error", e10);
            }
        }
    }

    @Override
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        if (y.b(sQLiteDatabase)) {
            return;
        }
        try {
            sQLiteDatabase.execSQL(String.format(i.f37685j, this.f37665a));
            sQLiteDatabase.execSQL(String.format(i.f37684i, this.f37665a));
        } catch (Exception e10) {
            if (a.f37664a) {
                Log.e("TrackManager", "downgrade table error", e10);
            }
        }
    }

    @Override
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        if (y.b(sQLiteDatabase)) {
            return;
        }
        try {
            sQLiteDatabase.execSQL(String.format(i.f37685j, this.f37665a));
            sQLiteDatabase.execSQL(String.format(i.f37684i, this.f37665a));
        } catch (Exception e10) {
            if (a.f37664a) {
                Log.e("TrackManager", "upgrade table error", e10);
            }
        }
    }
}
