package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zzdw;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;

public final class zzazy extends zzaxx implements zzbaa {
    public zzazy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override
    public final zzbx zze() throws RemoteException {
        throw null;
    }

    @Override
    public final zzdx zzf() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(5, zza());
        zzdx zzdxVarZzb = zzdw.zzb(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return zzdxVarZzb;
    }

    @Override
    public final void zzg(boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        ClassLoader classLoader = aue.a;
        parcelZza.writeInt(z ? 1 : 0);
        zzda(6, parcelZza);
    }

    @Override
    public final void zzh(zzdq zzdqVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzdqVar);
        zzda(7, parcelZza);
    }

    @Override
    public final void zzi(IObjectWrapper iObjectWrapper, zzbah zzbahVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        aue.f(parcelZza, zzbahVar);
        zzda(4, parcelZza);
    }
}
