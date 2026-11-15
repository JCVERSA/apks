package com.google.android.gms.internal.identity;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.location.LocationCallback;

final class zzaw extends zzba {
    final LocationCallback zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzaw(zzbb zzbbVar, GoogleApiClient googleApiClient, LocationCallback locationCallback) {
        super(googleApiClient);
        this.zza = locationCallback;
    }

    @Override
    protected final void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzdz) anyClient).zzw(ListenerHolders.createListenerKey(this.zza, LocationCallback.class.getSimpleName()), true, zzbb.zza(this));
    }
}
