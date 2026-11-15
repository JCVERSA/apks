package com.google.android.gms.internal.p002authapi;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.BaseImplementation;

abstract class zbm extends BaseImplementation.ApiMethodImpl {
    zbm(GoogleApiClient googleApiClient) {
        super(Auth.CREDENTIALS_API, googleApiClient);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected final void doExecute(Api.AnyClient anyClient) throws RemoteException {
        zbo zboVar = (zbo) anyClient;
        zba(zboVar.getContext(), (zbt) zboVar.getService());
    }

    @Override
    @KeepForSdk
    public final void setResult(Object obj) {
        super.setResult((Result) obj);
    }

    protected abstract void zba(Context context, zbt zbtVar) throws RemoteException;
}
