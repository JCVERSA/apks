package com.google.android.gms.internal.identity;

import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzay extends zzba {
    final Location zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzay(zzbb zzbbVar, GoogleApiClient googleApiClient, Location location) {
        super(googleApiClient);
        this.zza = location;
    }

    @Override
    protected final void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzdz) anyClient).zzA(this.zza, zzbb.zza(this));
    }
}
