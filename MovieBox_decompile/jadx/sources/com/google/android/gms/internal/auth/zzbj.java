package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.AuthProxy;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;

abstract class zzbj extends BaseImplementation.ApiMethodImpl {
    public zzbj(GoogleApiClient googleApiClient) {
        super(AuthProxy.API, googleApiClient);
    }

    @Override
    protected final Result createFailedResult(Status status) {
        return new zzbv(status);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected final void doExecute(Api.AnyClient anyClient) throws RemoteException {
        zzbe zzbeVar = (zzbe) anyClient;
        zza(zzbeVar.getContext(), (zzbh) zzbeVar.getService());
    }

    @Override
    @KeepForSdk
    public final void setResult(Object obj) {
        super.setResult((Result) obj);
    }

    protected abstract void zza(Context context, zzbh zzbhVar) throws RemoteException;
}
