package com.google.android.gms.internal.ads;

import defpackage.im5;
import defpackage.k7i;
import defpackage.v2i;

final class zzgad extends zzgaf {
    public zzgad(im5 im5Var, Class cls, k7i k7iVar) {
        super(im5Var, cls, k7iVar);
    }

    @Override
    public final Object zze(Object obj, Throwable th) throws Exception {
        k7i k7iVar = (k7i) obj;
        im5 im5VarZza = k7iVar.zza(th);
        v2i.d(im5VarZza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", k7iVar);
        return im5VarZza;
    }

    @Override
    public final void zzf(Object obj) {
        zzn((im5) obj);
    }
}
