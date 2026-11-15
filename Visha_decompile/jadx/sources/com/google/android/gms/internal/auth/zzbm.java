package com.google.android.gms.internal.auth;

import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.Status;
import defpackage.d7f;
import defpackage.jea;
import defpackage.zda;

final class zzbm extends zzbd {
    final zda zza;

    public zzbm(d7f d7fVar, zda zdaVar) {
        this.zza = zdaVar;
    }

    @Override
    public final void zzb(ProxyResponse proxyResponse) throws RemoteException {
        jea.b(new Status(proxyResponse.googlePlayServicesStatusCode), proxyResponse, this.zza);
    }
}
