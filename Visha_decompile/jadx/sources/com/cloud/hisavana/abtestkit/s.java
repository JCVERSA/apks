package com.cloud.hisavana.abtestkit;

import androidx.room.SharedSQLiteStatement;
import com.cloud.hisavana.abtestkit.db.ABRoomDatabase_Impl;

public final class s extends SharedSQLiteStatement {
    public s(ABRoomDatabase_Impl aBRoomDatabase_Impl) {
        super(aBRoomDatabase_Impl);
    }

    @Override
    public final String createQuery() {
        return "DELETE FROM hisavana_ab_room";
    }
}
