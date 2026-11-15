package com.mgtv.ssp.download;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import org.greenrobot.greendao.database.Database;

public final class b extends com.mgtv.ssp.download.dao3.a.AbstractC0184a {
    public b(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory) {
        super(context, str, cursorFactory);
    }

    @Override
    public void onCreate(Database database) {
        super.onCreate(database);
        f.a("DbOpenHelpler", ">>>>>>>>>> onCreate() - version : 1");
    }

    @Override
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        super.onUpgrade(sQLiteDatabase, i, i2);
        f.a("DbOpenHelpler", ">>>>>>>>>> onUpgrade() from version " + i + " to " + i2);
    }
}
