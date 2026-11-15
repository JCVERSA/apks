package com.mgmi.db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.mgmi.db.dao3.FileDownloadInfoDao;
import com.mgmi.db.dao3.MgmiOfflineAdDao;
import com.mgmi.db.dao3.MgmiOfflineAdResourceDao;
import com.mgmi.db.dao3.MgmiPullRefreshAdDao;
import org.greenrobot.greendao.database.Database;

public class a extends com.mgmi.db.dao3.a.AbstractC0166a {
    public a(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory) {
        super(context, str, cursorFactory);
    }

    public void a(Database database, boolean z) {
        FileDownloadInfoDao.b(database, z);
        FileDownloadInfoDao.a(database, z);
        MgmiOfflineAdDao.b(database, z);
        MgmiOfflineAdDao.a(database, z);
        MgmiOfflineAdResourceDao.b(database, z);
        MgmiOfflineAdResourceDao.a(database, z);
        MgmiPullRefreshAdDao.b(database, z);
        MgmiPullRefreshAdDao.a(database, z);
    }

    @Override
    public void onCreate(Database database) {
        super.onCreate(database);
    }

    @Override
    public void onUpgrade(Database database, int i, int i2) {
        super.onUpgrade(database, i, i2);
        a(database, true);
    }
}
