package com.google.android.gms.common.api.internal;

import androidx.annotation.WorkerThread;
import defpackage.e1e;
import defpackage.lu8;
import defpackage.ubc;
import defpackage.wd8;

final class zacy implements Runnable {
    final lu8 zaa;
    final e1e zab;

    public zacy(e1e e1eVar, lu8 lu8Var) {
        this.zaa = lu8Var;
    }

    @Override
    @WorkerThread
    public final void run() {
        try {
            try {
                BasePendingResult.n.set(Boolean.TRUE);
                e1e.a(null);
                ubc.a(wd8.l(null));
                throw null;
            } catch (RuntimeException unused) {
                e1e.b(null);
                e1e.b(null);
                throw null;
            }
        } catch (Throwable th) {
            BasePendingResult.n.set(Boolean.FALSE);
            e1e.e(this.zaa);
            com.google.android.gms.common.api.c cVar = (com.google.android.gms.common.api.c) e1e.c(null).get();
            if (cVar != null) {
                cVar.f(null);
            }
            throw th;
        }
    }
}
