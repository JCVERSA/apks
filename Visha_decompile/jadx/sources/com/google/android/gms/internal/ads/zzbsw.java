package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;

public final class zzbsw extends zzaxx implements zzbsy {
    public zzbsw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    @Override
    public final boolean zzH() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(11, zza());
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    @Override
    public final void zzh(int i, int i2, Intent intent) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        parcelZza.writeInt(i2);
        aue.d(parcelZza, intent);
        zzda(12, parcelZza);
    }

    @Override
    public final void zzi() throws RemoteException {
        zzda(10, zza());
    }

    @Override
    public final void zzk(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        zzda(13, parcelZza);
    }

    @Override
    public final void zzl(Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, bundle);
        zzda(1, parcelZza);
    }

    @Override
    public final void zzm() throws RemoteException {
        zzda(8, zza());
    }

    @Override
    public final void zzo() throws RemoteException {
        zzda(5, zza());
    }

    @Override
    public final void zzp(int i, String[] strArr, int[] iArr) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        parcelZza.writeStringArray(strArr);
        parcelZza.writeIntArray(iArr);
        zzda(15, parcelZza);
    }

    @Override
    public final void zzq() throws RemoteException {
        zzda(2, zza());
    }

    @Override
    public final void zzr() throws RemoteException {
        zzda(4, zza());
    }

    @Override
    public final void zzs(Bundle bundle) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, bundle);
        Parcel parcelZzcZ = zzcZ(6, parcelZza);
        if (parcelZzcZ.readInt() != 0) {
            bundle.readFromParcel(parcelZzcZ);
        }
        parcelZzcZ.recycle();
    }

    @Override
    public final void zzt() throws RemoteException {
        zzda(3, zza());
    }

    @Override
    public final void zzu() throws RemoteException {
        zzda(7, zza());
    }

    @Override
    public final void zzv() throws RemoteException {
        zzda(14, zza());
    }

    @Override
    public final void zzx() throws RemoteException {
        zzda(9, zza());
    }
}
