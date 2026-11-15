package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

final class zzgcs extends zzgca {
    final zzgct zza;
    private final Callable zzb;

    public zzgcs(zzgct zzgctVar, Callable callable) {
        this.zza = zzgctVar;
        callable.getClass();
        this.zzb = callable;
    }

    @Override
    public final Object zza() throws Exception {
        return this.zzb.call();
    }

    @Override
    public final String zzb() {
        return this.zzb.toString();
    }

    @Override
    public final void zzd(Throwable th) {
        this.zza.zzd(th);
    }

    @Override
    public final void zze(Object obj) {
        this.zza.zzc(obj);
    }

    @Override
    public final boolean zzg() {
        return this.zza.isDone();
    }
}
