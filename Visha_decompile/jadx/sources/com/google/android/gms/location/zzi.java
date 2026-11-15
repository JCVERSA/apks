package com.google.android.gms.location;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import defpackage.j5;
import defpackage.jea;
import defpackage.zda;

final class zzi extends IStatusCallback.Stub {
    final zda zza;

    public zzi(j5 j5Var, zda zdaVar) {
        this.zza = zdaVar;
    }

    @Override
    public final void onResult(Status status) {
        jea.a(status, this.zza);
    }
}
