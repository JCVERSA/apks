package com.facebook.biddingkit.logging;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

class d extends SQLiteOpenHelper {
    public d(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i10) {
        super(context, str, cursorFactory, i10);
    }

    @Override
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL("create table EVENT_LOGS( ID integer primary key autoincrement,auction_id  text,exception  text,bidder_data  text); ");
        } catch (Exception e10) {
            b.d("DataBaseHelper", "Failed database create", e10);
        }
    }

    @Override
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS EVENT_LOGS");
        onCreate(sQLiteDatabase);
    }
}
