package io.appmetrica.analytics.impl;

import android.database.sqlite.SQLiteDatabase;
import io.appmetrica.analytics.coreapi.internal.db.DatabaseScript;

public final class C2556g4 extends DatabaseScript {
    @Override
    public final void runScript(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.delete("preferences", "key = ?", new String[]{"NEXT_STARTUP_TIME"});
    }
}
