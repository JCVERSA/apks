package com.amazonaws.mobileconnectors.s3.transferutility;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

class TransferDatabaseHelper extends SQLiteOpenHelper {

    private final Context f17846a;

    private int f17847b;

    public TransferDatabaseHelper(Context context) {
        this(context, 6);
    }

    @Override
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        TransferTable.f(sQLiteDatabase, this.f17847b);
    }

    @Override
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        this.f17846a.deleteDatabase("awss3transfertable.db");
        onCreate(sQLiteDatabase);
    }

    @Override
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        TransferTable.g(sQLiteDatabase, i10, i11);
    }

    public TransferDatabaseHelper(Context context, int i10) {
        super(context, "awss3transfertable.db", (SQLiteDatabase.CursorFactory) null, i10);
        this.f17846a = context;
        this.f17847b = i10;
    }
}
