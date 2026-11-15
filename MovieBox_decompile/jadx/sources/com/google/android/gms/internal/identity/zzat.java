package com.google.android.gms.internal.identity;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationRequest;

final class zzat extends zzba {
    final PendingIntent zza;
    final LocationRequest zzb;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    zzat(zzbb zzbbVar, GoogleApiClient googleApiClient, PendingIntent pendingIntent, LocationRequest locationRequest) {
        super(googleApiClient);
        this.zza = pendingIntent;
        this.zzb = locationRequest;
    }

    @Override
    protected final void doExecute(Api.AnyClient anyClient) throws RemoteException {
        ((zzdz) anyClient).zzu(this.zza, this.zzb, zzbb.zza(this));
    }
}
