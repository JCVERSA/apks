package com.google.android.play.core.review.internal;

import defpackage.ykj;
import defpackage.zda;

final class zzm extends zzj {
    final zda zza;
    final zzj zzb;
    final ykj zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzm(ykj ykjVar, zda zdaVar, zda zdaVar2, zzj zzjVar) {
        super(zdaVar);
        this.zza = zdaVar2;
        this.zzb = zzjVar;
    }

    @Override
    public final void zza() {
        synchronized (ykj.e(null)) {
            try {
                ykj.k(null, this.zza);
                if (ykj.g(null).getAndIncrement() > 0) {
                    ykj.d(null).a("Already connected to the service.", new Object[0]);
                }
                ykj.m(null, this.zzb);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
