package com.google.android.gms.internal.auth;

import com.google.android.gms.auth.AccountChangeEventsResponse;
import com.google.android.gms.common.api.Status;
import defpackage.x6e;
import defpackage.zda;

final class zzz extends zzl {
    final zda zza;

    public zzz(x6e x6eVar, zda zdaVar) {
        this.zza = zdaVar;
    }

    @Override
    public final void zzb(Status status, AccountChangeEventsResponse accountChangeEventsResponse) {
        x6e.v(status, accountChangeEventsResponse, this.zza);
    }
}
