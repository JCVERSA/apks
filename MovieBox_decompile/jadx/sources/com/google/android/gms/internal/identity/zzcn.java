package com.google.android.gms.internal.identity;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.GeofencingRequest;

final class zzcn extends zzcq {
    final GeofencingRequest zza;
    final PendingIntent zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzcn(zzcr zzcrVar, GoogleApiClient googleApiClient, GeofencingRequest geofencingRequest, PendingIntent pendingIntent) {
        super(googleApiClient);
        this.zza = geofencingRequest;
        this.zzb = pendingIntent;
    }

    @Override
    protected final void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzdz) anyClient).zzE(this.zza, this.zzb, zzcr.zza(this));
    }
}
