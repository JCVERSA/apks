package com.google.android.gms.internal.ads;

import defpackage.o8i;
import defpackage.p8i;
import defpackage.q2i;
import defpackage.s2i;
import defpackage.v7i;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

final class zzgbp implements Runnable {
    final Future zza;
    final v7i zzb;

    public zzgbp(Future future, v7i v7iVar) {
        this.zza = future;
        this.zzb = v7iVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void run() {
        Throwable thA;
        Future future = this.zza;
        if ((future instanceof o8i) && (thA = p8i.a((o8i) future)) != null) {
            this.zzb.zza(thA);
            return;
        }
        try {
            this.zzb.zzb(j8.p(future));
        } catch (ExecutionException e) {
            this.zzb.zza(e.getCause());
        } catch (Throwable th) {
            this.zzb.zza(th);
        }
    }

    public final String toString() {
        q2i q2iVarA = s2i.a(this);
        q2iVarA.a(this.zzb);
        return q2iVarA.toString();
    }
}
