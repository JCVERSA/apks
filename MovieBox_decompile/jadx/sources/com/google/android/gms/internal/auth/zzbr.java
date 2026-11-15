package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Status;

final class zzbr extends zzbd {
    final zzbs zza;

    zzbr(zzbs zzbsVar) {
        this.zza = zzbsVar;
    }

    @Override
    public final void zzc(String str) {
        if (str != null) {
            this.zza.setResult(new zzbv(str));
        } else {
            this.zza.setResult(new zzbv(new Status(3006)));
        }
    }
}
