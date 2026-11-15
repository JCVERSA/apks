package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import defpackage.x6e;
import defpackage.zda;

final class zzx extends IStatusCallback.Stub {
    final zda zza;

    public zzx(x6e x6eVar, zda zdaVar) {
        this.zza = zdaVar;
    }

    @Override
    public final void onResult(Status status) {
        x6e.v(status, null, this.zza);
    }
}
