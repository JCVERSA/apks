package com.mgtv.ssp.download.dao3;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import org.greenrobot.greendao.AbstractDaoMaster;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseOpenHelper;
import org.greenrobot.greendao.identityscope.IdentityScopeType;

public class a extends AbstractDaoMaster {

    public static abstract class AbstractC0184a extends DatabaseOpenHelper {
        public AbstractC0184a(Context context, String str, SQLiteDatabase.CursorFactory cursorFactory) {
            super(context, str, cursorFactory, 1);
        }

        @Override
        public void onCreate(Database database) {
            Log.i("greenDAO", "Creating tables for schema version 1");
            a.a(database, false);
        }
    }

    public a(Database database) {
        super(database, 1);
        registerDaoClass(FileDownloadInfoDao.class);
    }

    public static void a(Database database, boolean z) {
        FileDownloadInfoDao.a(database, z);
    }

    @Override
    public b newSession() {
        return new b(this.db, IdentityScopeType.Session, this.daoConfigMap);
    }

    @Override
    public b newSession(IdentityScopeType identityScopeType) {
        return new b(this.db, identityScopeType, this.daoConfigMap);
    }
}
