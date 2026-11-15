package com.google.android.gms.internal.auth;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import defpackage.rff;

public final class zzbh extends zza implements IInterface {
    public zzbh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.auth.api.internal.IAuthService");
    }

    public final void zzd(zzbg zzbgVar) throws RemoteException {
        Parcel parcelZza = zza();
        rff.e(parcelZza, zzbgVar);
        zzc(3, parcelZza);
    }

    public final void zze(zzbg zzbgVar, ProxyRequest proxyRequest) throws RemoteException {
        Parcel parcelZza = zza();
        rff.e(parcelZza, zzbgVar);
        rff.d(parcelZza, proxyRequest);
        zzc(1, parcelZza);
    }
}
