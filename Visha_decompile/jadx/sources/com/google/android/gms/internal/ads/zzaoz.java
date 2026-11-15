package com.google.android.gms.internal.ads;

import defpackage.kme;
import org.mozilla.javascript.ES6Iterator;

final class zzaoz implements Runnable {
    private final c zza;
    private final kme zzb;
    private final Runnable zzc;

    public zzaoz(c cVar, kme kmeVar, Runnable runnable) {
        this.zza = cVar;
        this.zzb = kmeVar;
        this.zzc = runnable;
    }

    @Override
    public final void run() {
        c cVar = this.zza;
        cVar.zzw();
        kme kmeVar = this.zzb;
        if (kmeVar.c()) {
            cVar.d(kmeVar.a);
        } else {
            cVar.zzn(kmeVar.c);
        }
        if (kmeVar.d) {
            cVar.zzm("intermediate-response");
        } else {
            cVar.e(ES6Iterator.DONE_PROPERTY);
        }
        Runnable runnable = this.zzc;
        if (runnable != null) {
            runnable.run();
        }
    }
}
