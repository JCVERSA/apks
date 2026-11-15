package com.google.android.gms.internal.identity;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.List;

final class zzcp extends zzcq {
    final List zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzcp(zzcr zzcrVar, GoogleApiClient googleApiClient, List list) {
        super(googleApiClient);
        this.zza = list;
    }

    @Override
    protected final void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzdz) anyClient).zzF(zzem.zza(this.zza), zzcr.zza(this));
    }
}
