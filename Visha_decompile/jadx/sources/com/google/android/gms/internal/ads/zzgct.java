package com.google.android.gms.internal.ads;

import defpackage.j7i;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.RunnableFuture;

final class zzgct extends i8 implements RunnableFuture {
    private volatile zzgca zza;

    public zzgct(j7i j7iVar) {
        this.zza = new zzgcr(this, j7iVar);
    }

    public static zzgct zze(Runnable runnable, Object obj) {
        return new zzgct(Executors.callable(runnable, obj));
    }

    @Override
    public final void run() {
        zzgca zzgcaVar = this.zza;
        if (zzgcaVar != null) {
            zzgcaVar.run();
        }
        this.zza = null;
    }

    @Override
    public final String zza() {
        zzgca zzgcaVar = this.zza;
        if (zzgcaVar == null) {
            return super.zza();
        }
        return "task=[" + zzgcaVar.toString() + "]";
    }

    @Override
    public final void zzb() {
        zzgca zzgcaVar;
        if (zzo() && (zzgcaVar = this.zza) != null) {
            zzgcaVar.zzh();
        }
        this.zza = null;
    }

    public zzgct(Callable callable) {
        this.zza = new zzgcs(this, callable);
    }
}
