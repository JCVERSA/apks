package com.cloud.hisavana.abtestkit;

import androidx.room.SharedSQLiteStatement;
import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;

public final class C0519r extends SharedSQLiteStatement {
    public C0519r(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        super(aBRoomDatabase_Impl);
    }

    @Override
    public final String createQuery() {
        return "DELETE FROM hisavana_ab_room WHERE layer_id IN (SELECT layer_id FROM hisavana_ab_room ORDER BY request_time ASC LIMIT ?)";
    }
}
