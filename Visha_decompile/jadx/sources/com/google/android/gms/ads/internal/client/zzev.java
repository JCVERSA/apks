package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;

public final class zzev extends zzdf {
    private final String zza;
    private final String zzb;

    public zzev(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    @Override
    public final String zze() throws RemoteException {
        return this.zza;
    }

    @Override
    public final String zzf() throws RemoteException {
        return this.zzb;
    }
}
