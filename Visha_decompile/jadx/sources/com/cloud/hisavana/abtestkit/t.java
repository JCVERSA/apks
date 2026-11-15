package com.cloud.hisavana.abtestkit;

import androidx.room.SharedSQLiteStatement;
import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;

public final class t extends SharedSQLiteStatement {
    public t(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        super(aBRoomDatabase_Impl);
    }

    @Override
    public final String createQuery() {
        return "UPDATE hisavana_ab_room SET request_time = ? WHERE layer_id = ?";
    }
}
