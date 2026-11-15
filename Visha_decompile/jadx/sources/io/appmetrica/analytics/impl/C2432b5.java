package io.appmetrica.analytics.impl;

import android.database.sqlite.SQLiteDatabase;
import io.appmetrica.analytics.coreapi.internal.db.DatabaseScript;

public final class C2432b5 extends DatabaseScript {
    public final C2407a5 a = new C2407a5();
    public final Z4 b = new Z4();

    @Override
    public final void runScript(SQLiteDatabase sQLiteDatabase) {
        this.a.runScript(sQLiteDatabase);
        this.b.runScript(sQLiteDatabase);
    }
}
