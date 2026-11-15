package com.cloud.hisavana.abtestkit;

import androidx.room.EntityInsertionAdapter;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;
import defpackage.nvd;

public final class p extends EntityInsertionAdapter<nvd> {
    public p(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        super(aBRoomDatabase_Impl);
    }

    @Override
    public final void bind(SupportSQLiteStatement supportSQLiteStatement, nvd nvdVar) {
        nvd nvdVar2 = nvdVar;
        supportSQLiteStatement.bindLong(1, nvdVar2.getLayerId());
        supportSQLiteStatement.bindLong(2, nvdVar2.getRequestTime());
        if (nvdVar2.getInfo() == null) {
            supportSQLiteStatement.bindNull(3);
        } else {
            supportSQLiteStatement.bindString(3, nvdVar2.getInfo());
        }
    }

    @Override
    public final String createQuery() {
        return "INSERT OR REPLACE INTO `hisavana_ab_room` (`layer_id`,`request_time`,`ab_info`) VALUES (?,?,?)";
    }
}
