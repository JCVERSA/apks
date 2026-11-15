package com.google.android.gms.internal.p001authapiphone;

import com.google.android.gms.common.api.Status;
import defpackage.jea;
import defpackage.y6e;
import defpackage.zda;

final class zzaa extends zzi {
    final zda zza;

    public zzaa(y6e y6eVar, zda zdaVar) {
        this.zza = zdaVar;
    }

    @Override
    public final void zzb(Status status) {
        jea.a(status, this.zza);
    }
}
