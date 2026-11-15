package com.google.android.gms.auth.api.signin.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

final class zbi extends zbl {
    zbi(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    protected final void doExecute(Api.AnyClient anyClient) throws RemoteException {
        zbe zbeVar = (zbe) anyClient;
        ((zbs) zbeVar.getService()).zbd(new zbh(this), zbeVar.zba());
    }

    @Override
    protected final Result createFailedResult(Status status) {
        return status;
    }
}
