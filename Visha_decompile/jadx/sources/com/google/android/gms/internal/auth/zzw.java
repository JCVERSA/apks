package com.google.android.gms.internal.auth;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import defpackage.x6e;
import defpackage.zda;

final class zzw extends zzn {
    final zda zza;

    public zzw(x6e x6eVar, zda zdaVar) {
        this.zza = zdaVar;
    }

    @Override
    public final void zzb(Status status, @Nullable Bundle bundle) {
        x6e.v(status, bundle, this.zza);
    }
}
