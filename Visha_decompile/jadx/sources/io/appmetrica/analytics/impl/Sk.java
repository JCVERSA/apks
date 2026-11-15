package io.appmetrica.analytics.impl;

import android.database.sqlite.SQLiteDatabase;
import androidx.annotation.Nullable;

public final class Sk implements F6 {
    public final C2534f7 a;

    public Sk(C2534f7 c2534f7) {
        this.a = c2534f7;
    }

    @Override
    public final void a(@Nullable SQLiteDatabase sQLiteDatabase) {
    }

    @Override
    @Nullable
    public final SQLiteDatabase a() {
        try {
            return this.a.getWritableDatabase();
        } catch (Throwable unused) {
            return null;
        }
    }
}
