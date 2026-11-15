package com.cloud.hisavana.abtestkit;

import androidx.room.EntityDeletionOrUpdateAdapter;
import androidx.sqlite.db.SupportSQLiteStatement;
import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;
import defpackage.nvd;

public final class q extends EntityDeletionOrUpdateAdapter<nvd> {
    public q(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        super(aBRoomDatabase_Impl);
    }

    @Override
    public final void bind(SupportSQLiteStatement supportSQLiteStatement, nvd nvdVar) {
        supportSQLiteStatement.bindLong(1, nvdVar.getLayerId());
    }

    @Override
    public final String createQuery() {
        return "DELETE FROM `hisavana_ab_room` WHERE `layer_id` = ?";
    }
}
