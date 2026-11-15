package com.google.android.gms.internal.auth;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import defpackage.d7f;
import defpackage.jea;
import defpackage.zda;

final class zzbn extends zzbd {
    final zda zza;

    public zzbn(d7f d7fVar, zda zdaVar) {
        this.zza = zdaVar;
    }

    @Override
    public final void zzc(String str) throws RemoteException {
        jea.b(str != null ? Status.RESULT_SUCCESS : new Status(3006), str, this.zza);
    }
}
