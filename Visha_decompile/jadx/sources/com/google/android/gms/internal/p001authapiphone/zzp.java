package com.google.android.gms.internal.p001authapiphone;

import com.google.android.gms.common.api.Status;
import defpackage.jea;
import defpackage.lij;
import defpackage.zda;

final class zzp extends zzd {
    final zda zza;

    public zzp(lij lijVar, zda zdaVar) {
        this.zza = zdaVar;
    }

    @Override
    public final void zzb(Status status, int i) {
        jea.b(status, Integer.valueOf(i), this.zza);
    }
}
