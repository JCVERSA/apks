package com.mgtv.thirdsdk.playcore.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

public class c extends SQLiteOpenHelper {
    public c(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory, int i) {
        super(context.getApplicationContext(), str, cursorFactory, i);
    }

    @Override
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE IF NOT EXISTS VIDEO_POSITION (vid INTEGER PRIMARY KEY autoincrement,uid TEXT,url TEXT,pos INTEGER,vdate INTEGER,duration INTEGER)");
    }

    @Override
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        while (i <= i2) {
            if (i == 3) {
                try {
                    sQLiteDatabase.execSQL("ALTER TABLE VIDEO_POSITION ADD COLUMN duration INTEGER");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
            i++;
        }
    }
}
