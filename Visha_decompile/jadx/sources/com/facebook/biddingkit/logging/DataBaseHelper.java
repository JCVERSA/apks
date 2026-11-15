package com.facebook.biddingkit.logging;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.annotation.Nullable;

class DataBaseHelper extends SQLiteOpenHelper {
    private static final String DATABASE_CREATE = "create table EVENT_LOGS( ID integer primary key autoincrement,auction_id  text,exception  text,bidder_data  text); ";
    private static final String TAG = "DataBaseHelper";

    public DataBaseHelper(Context context, String str, @Nullable SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context, str, cursorFactory, i);
    }

    @Override
    @SuppressLint({"CatchGeneralException"})
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        try {
            sQLiteDatabase.execSQL(DATABASE_CREATE);
        } catch (Exception e) {
            BkLog.e(TAG, "Failed database create", e);
        }
    }

    @Override
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS EVENT_LOGS");
        onCreate(sQLiteDatabase);
    }
}
