package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

final class zzgbd extends zzgbe {
    final h8 zza;
    private final Callable zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgbd(h8 h8Var, Callable callable, Executor executor) {
        super(h8Var, executor);
        this.zza = h8Var;
        this.zzc = callable;
    }

    @Override
    public final Object zza() throws Exception {
        return this.zzc.call();
    }

    @Override
    public final String zzb() {
        return this.zzc.toString();
    }

    @Override
    public final void zzc(Object obj) {
        this.zza.zzc(obj);
    }
}
