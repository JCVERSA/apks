package com.google.android.gms.internal.ads;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

abstract class zzgbe extends zzgca {
    private final Executor zza;
    final h8 zzb;

    public zzgbe(h8 h8Var, Executor executor) {
        this.zzb = h8Var;
        executor.getClass();
        this.zza = executor;
    }

    public abstract void zzc(Object obj);

    @Override
    public final void zzd(Throwable th) {
        h8 h8Var = this.zzb;
        h8Var.j = null;
        if (th instanceof ExecutionException) {
            h8Var.zzd(((ExecutionException) th).getCause());
        } else if (th instanceof CancellationException) {
            h8Var.cancel(false);
        } else {
            h8Var.zzd(th);
        }
    }

    @Override
    public final void zze(Object obj) {
        this.zzb.j = null;
        zzc(obj);
    }

    public final void zzf() {
        try {
            this.zza.execute(this);
        } catch (RejectedExecutionException e) {
            this.zzb.zzd(e);
        }
    }

    @Override
    public final boolean zzg() {
        return this.zzb.isDone();
    }
}
