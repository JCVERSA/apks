package com.google.android.gms.internal.auth;

import android.os.RemoteException;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;

final class zzae extends BaseImplementation.ApiMethodImpl {
    final String zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzae(zzal zzalVar, Api api, GoogleApiClient googleApiClient, String str) {
        super((Api<?>) api, googleApiClient);
        this.zza = str;
    }

    @Override
    protected final Result createFailedResult(Status status) {
        return new zzai(status, null);
    }

    @Override
    protected final void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((com.google.android.gms.auth.account.zze) ((zzam) anyClient).getService()).zzd(new zzad(this), this.zza);
    }

    @Override
    @KeepForSdk
    public final void setResult(Object obj) {
        super.setResult((Result) obj);
    }
}
