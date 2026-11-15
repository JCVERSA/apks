package com.cloud.hisavana.abtestkit;

import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;
import defpackage.nod;

public final class k extends EntityDeletionOrUpdateAdapter<nod> {
    public k(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
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
        supportSQLiteStatement.bindLong(3, nodVar2.a);
    }

    @Override
    public final String createQuery() {
        return "UPDATE OR ABORT `hisavana_local_ab_room` SET `local_ab_version_code` = ?,`local_ab_json` = ? WHERE `local_ab_version_code` = ?";
    }
}
