package com.google.android.gms.internal.p001authapiphone;

import com.google.android.gms.common.api.Status;
import defpackage.jea;
import defpackage.lij;
import defpackage.zda;

final class zzq extends zzf {
    final zda zza;

    public zzq(lij lijVar, zda zdaVar) {
        this.zza = zdaVar;
    }

    @Override
    public final void zzb(Status status, boolean z) {
        jea.b(status, Boolean.valueOf(z), this.zza);
    }
}
