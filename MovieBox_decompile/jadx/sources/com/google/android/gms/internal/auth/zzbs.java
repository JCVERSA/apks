package com.google.android.gms.internal.auth;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;

final class zzbs extends zzbj {
    zzbs(zzbt zzbtVar, GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    @Override
    protected final void zza(Context context, zzbh zzbhVar) throws RemoteException {
        zzbhVar.zzd(new zzbr(this));
    }
}
