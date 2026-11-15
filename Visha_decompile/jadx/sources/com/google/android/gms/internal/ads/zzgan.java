package com.google.android.gms.internal.ads;

import defpackage.im5;
import defpackage.k7i;
import defpackage.v2i;

final class zzgan extends zzgap {
    public zzgan(im5 im5Var, k7i k7iVar) {
        super(im5Var, k7iVar);
    }

    @Override
    public final Object zze(Object obj, Object obj2) throws Exception {
        k7i k7iVar = (k7i) obj;
        im5 im5VarZza = k7iVar.zza(obj2);
        v2i.d(im5VarZza, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", k7iVar);
        return im5VarZza;
    }

    @Override
    public final void zzf(Object obj) {
        zzn((im5) obj);
    }
}
