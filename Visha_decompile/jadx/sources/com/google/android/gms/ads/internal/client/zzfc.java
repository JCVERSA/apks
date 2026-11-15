package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import androidx.annotation.Nullable;

final class zzfc extends zzbp {
    final zzfe zza;

    public zzfc(zzfe zzfeVar, zzfd zzfdVar) {
        this.zza = zzfeVar;
    }

    @Override
    @Nullable
    public final String zze() throws RemoteException {
        return null;
    }

    @Override
    @Nullable
    public final String zzf() throws RemoteException {
        return null;
    }

    @Override
    public final void zzg(zzm zzmVar) throws RemoteException {
        zzh(zzmVar, 1);
    }

    @Override
    public final void zzh(zzm zzmVar, int i) throws RemoteException {
        com.google.android.gms.ads.internal.util.client.zzo.zzg("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        com.google.android.gms.ads.internal.util.client.zzf.zza.post(new zzfb(this));
    }

    @Override
    public final boolean zzi() throws RemoteException {
        return false;
    }
}
