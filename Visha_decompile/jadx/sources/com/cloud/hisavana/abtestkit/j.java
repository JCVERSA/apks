package com.cloud.hisavana.abtestkit;

import androidx.room.EntityInsertionAdapter;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;
import defpackage.nod;

public final class j extends EntityInsertionAdapter<nod> {
    public j(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        super(aBRoomDatabase_Impl);
    }

    @Override
    public final void bind(SupportSQLiteStatement supportSQLiteStatement, nod nodVar) {
        nod nodVar2 = nodVar;
        supportSQLiteStatement.bindLong(1, nodVar2.a);
        String str = nodVar2.b;
        if (str == null) {
            supportSQLiteStatement.bindNull(2);
        } else {
            supportSQLiteStatement.bindString(2, str);
        }
    }

    @Override
    public final String createQuery() {
        return "INSERT OR REPLACE INTO `hisavana_local_ab_room` (`local_ab_version_code`,`local_ab_json`) VALUES (?,?)";
    }
}
