package io.appmetrica.analytics.impl;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import io.appmetrica.analytics.logger.appmetrica.internal.PublicLogger;
import java.io.Closeable;

public final class C2514ec implements F6 {
    public final Context a;
    public final String b;
    public final Hm c;
    public final C2537fa d;
    public C2534f7 e;

    public C2514ec(Context context, String str, @NonNull Hm hm) {
        this(context, str, new C2537fa(str), hm);
    }

    @Override
    @Nullable
    @WorkerThread
    public final synchronized SQLiteDatabase a() {
        C2534f7 c2534f7;
        try {
            this.d.a();
            c2534f7 = new C2534f7(this.a, this.b, this.c, PublicLogger.getAnonymousInstance());
            this.e = c2534f7;
        } catch (Throwable unused) {
            return null;
        }
        return c2534f7.getWritableDatabase();
    }

    @VisibleForTesting
    public C2514ec(@NonNull Context context, @NonNull String str, @NonNull C2537fa c2537fa, @NonNull Hm hm) {
        this.a = context;
        this.b = str;
        this.d = c2537fa;
        this.c = hm;
    }

    @Override
    @WorkerThread
    public final synchronized void a(@Nullable SQLiteDatabase sQLiteDatabase) {
        if (sQLiteDatabase != null) {
            try {
                sQLiteDatabase.close();
            } catch (Throwable unused) {
            }
        }
        In.a((Closeable) this.e);
        this.d.b();
        this.e = null;
    }
}
