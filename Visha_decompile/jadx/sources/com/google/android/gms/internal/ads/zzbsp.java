package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.offline.buffering.zza;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;

public final class zzbsp extends zzaxx implements zzbsr {
    public zzbsp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    @Override
    public final void zze(Intent intent) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, intent);
        zzda(1, parcelZza);
    }

    @Override
    public final void zzf(String[] strArr, int[] iArr, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeStringArray(strArr);
        parcelZza.writeIntArray(iArr);
        aue.f(parcelZza, iObjectWrapper);
        zzda(5, parcelZza);
    }

    @Override
    public final void zzg(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        zzda(4, parcelZza);
    }

    @Override
    public final void zzh() throws RemoteException {
        zzda(3, zza());
    }

    @Override
    public final void zzi(IObjectWrapper iObjectWrapper, String str, String str2) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzj(IObjectWrapper iObjectWrapper, zza zzaVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        aue.d(parcelZza, zzaVar);
        zzda(6, parcelZza);
    }
}
