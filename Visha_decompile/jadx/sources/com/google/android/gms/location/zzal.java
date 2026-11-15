package com.google.android.gms.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.location.zzaa;
import com.google.android.gms.internal.location.zzah;
import defpackage.ud;
import defpackage.zda;

final class zzal extends zzah {
    final zda zza;

    public zzal(a aVar, zda zdaVar) {
        this.zza = zdaVar;
    }

    @Override
    public final void zzb(zzaa zzaaVar) throws RemoteException {
        Status status = zzaaVar.getStatus();
        if (status == null) {
            this.zza.d(new ApiException(new Status(8, "Got null status from location service")));
        } else if (status.getStatusCode() == 0) {
            this.zza.c(Boolean.TRUE);
        } else {
            this.zza.d(ud.a(status));
        }
    }

    @Override
    public final void zzc() {
    }
}
