package com.google.android.gms.internal.p002authapi;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

final class zbg extends zbm {
    final CredentialRequest zba;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zbg(zbl zblVar, GoogleApiClient googleApiClient, CredentialRequest credentialRequest) {
        super(googleApiClient);
        this.zba = credentialRequest;
    }

    @Override
    protected final Result createFailedResult(Status status) {
        return new zbe(status, null);
    }

    @Override
    protected final void zba(Context context, zbt zbtVar) throws RemoteException {
        zbtVar.zbd(new zbf(this), this.zba);
    }
}
