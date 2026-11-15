package com.google.android.gms.internal.auth;

import android.os.RemoteException;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;

final class zzac extends BaseImplementation.ApiMethodImpl {
    final boolean zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzac(zzal zzalVar, Api api, GoogleApiClient googleApiClient, boolean z10) {
        super((Api<?>) api, googleApiClient);
        this.zza = z10;
    }

    @Override
    protected final Result createFailedResult(Status status) {
        return new zzaj(status);
    }

    @Override
    protected final void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((com.google.android.gms.auth.account.zze) ((zzam) anyClient).getService()).zzf(this.zza);
        setResult(new zzaj(Status.RESULT_SUCCESS));
    }

    @Override
    @KeepForSdk
    public final void setResult(Object obj) {
        super.setResult((Result) obj);
    }
}
