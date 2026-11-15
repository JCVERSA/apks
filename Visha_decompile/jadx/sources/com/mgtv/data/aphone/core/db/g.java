package com.mgtv.data.aphone.core.db;

import android.database.sqlite.SQLiteDatabase;

class g implements Runnable {
    private SQLiteDatabase a;
    private h b;

    public g(SQLiteDatabase sQLiteDatabase, h hVar) {
        this.a = sQLiteDatabase;
        this.b = hVar;
    }

    @Override
    public void run() {
        if (this.b.a(this.a)) {
            return;
        }
        this.a.beginTransaction();
        try {
            if (this.b.b(this.a)) {
                this.a.setTransactionSuccessful();
            }
        } finally {
            try {
                this.a.endTransaction();
            } catch (Exception unused) {
            }
        }
    }
}
