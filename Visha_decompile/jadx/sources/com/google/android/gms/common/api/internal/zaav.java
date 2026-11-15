package com.google.android.gms.common.api.internal;

import androidx.annotation.WorkerThread;
import defpackage.szd;
import defpackage.tzd;

abstract class zaav implements Runnable {
    final tzd zab;

    public zaav(tzd tzdVar, szd szdVar) {
    }

    @Override
    @WorkerThread
    public final void run() {
        tzd.e(null).lock();
        try {
            try {
                if (!Thread.interrupted()) {
                    zaa();
                }
                tzd.e(null).unlock();
            } catch (RuntimeException unused) {
                tzd.c(null);
                throw null;
            }
        } catch (Throwable th) {
            tzd.e(null).unlock();
            throw th;
        }
    }

    @WorkerThread
    public abstract void zaa();
}
