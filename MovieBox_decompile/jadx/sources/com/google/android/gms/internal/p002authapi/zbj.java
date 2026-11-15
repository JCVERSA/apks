package com.google.android.gms.internal.p002authapi;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

final class zbj extends zbm {
    zbj(zbl zblVar, GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override
    protected final void zba(Context context, zbt zbtVar) throws RemoteException {
        zbtVar.zbf(new zbk(this));
    }

    @Override
    protected final Result createFailedResult(Status status) {
        return status;
    }
}
