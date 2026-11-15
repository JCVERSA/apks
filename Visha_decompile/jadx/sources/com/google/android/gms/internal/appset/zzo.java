package com.google.android.gms.internal.appset;

import androidx.annotation.Nullable;
import com.google.android.gms.appset.zzc;
import com.google.android.gms.common.api.Status;
import defpackage.agj;
import defpackage.jea;
import defpackage.zda;
import defpackage.ze;

final class zzo extends zze {
    final zda zza;

    public zzo(agj agjVar, zda zdaVar) {
        this.zza = zdaVar;
    }

    @Override
    public final void zzb(Status status, @Nullable zzc zzcVar) {
        jea.b(status, zzcVar != null ? new ze(zzcVar.zzb(), zzcVar.zza()) : null, this.zza);
    }
}
