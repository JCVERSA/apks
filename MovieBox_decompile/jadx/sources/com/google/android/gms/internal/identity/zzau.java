package com.google.android.gms.internal.identity;

import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.location.LocationListener;

final class zzau extends zzba {
    final LocationListener zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzau(zzbb zzbbVar, GoogleApiClient googleApiClient, LocationListener locationListener) {
        super(googleApiClient);
        this.zza = locationListener;
    }

    @Override
    protected final void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzdz) anyClient).zzv(ListenerHolders.createListenerKey(this.zza, LocationListener.class.getSimpleName()), true, zzbb.zza(this));
    }
}
