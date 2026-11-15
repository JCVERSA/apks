package com.google.android.play.core.review.internal;

import defpackage.ykj;

final class zzn extends zzj {
    final ykj zza;

    public zzn(ykj ykjVar) {
    }

    @Override
    public final void zza() {
        synchronized (ykj.e(null)) {
            try {
                if (ykj.g(null).get() > 0 && ykj.g(null).decrementAndGet() > 0) {
                    ykj.d(null).a("Leaving the connection open for other ongoing calls.", new Object[0]);
                    return;
                }
                if (ykj.c(null) != null) {
                    ykj.d(null).a("Unbind from service.", new Object[0]);
                    ykj.a(null).unbindService(ykj.b(null));
                    ykj.i(null, false);
                    ykj.j(null, null);
                    ykj.h(null, null);
                }
                ykj.l(null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
