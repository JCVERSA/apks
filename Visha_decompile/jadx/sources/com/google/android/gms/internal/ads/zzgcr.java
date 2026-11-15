package com.google.android.gms.internal.ads;

import defpackage.im5;
import defpackage.j7i;
import defpackage.v2i;

final class zzgcr extends zzgca {
    final zzgct zza;
    private final j7i zzb;

    public zzgcr(zzgct zzgctVar, j7i j7iVar) {
        this.zza = zzgctVar;
        this.zzb = j7iVar;
    }

    @Override
    public final Object zza() throws Exception {
        j7i j7iVar = this.zzb;
        im5 im5VarZza = j7iVar.zza();
        v2i.d(im5VarZza, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", j7iVar);
        return im5VarZza;
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
        this.zza.zzn((im5) obj);
    }

    @Override
    public final boolean zzg() {
        return this.zza.isDone();
    }
}
