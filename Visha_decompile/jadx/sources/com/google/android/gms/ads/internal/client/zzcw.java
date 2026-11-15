package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzaxx;
import com.google.android.gms.internal.ads.zzblh;
import com.google.android.gms.internal.ads.zzblo;
import com.google.android.gms.internal.ads.zzboy;
import defpackage.aue;
import java.util.ArrayList;
import java.util.List;

public final class zzcw extends zzaxx implements zzcy {
    public zzcw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override
    public final float zze() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(7, zza());
        float f = parcelZzcZ.readFloat();
        parcelZzcZ.recycle();
        return f;
    }

    @Override
    public final String zzf() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(9, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    @Override
    public final List zzg() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(13, zza());
        ArrayList arrayListCreateTypedArrayList = parcelZzcZ.createTypedArrayList(zzblh.CREATOR);
        parcelZzcZ.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override
    public final void zzh(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzda(10, parcelZza);
    }

    @Override
    public final void zzi() throws RemoteException {
        zzda(15, zza());
    }

    @Override
    public final void zzj(boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        ClassLoader classLoader = aue.a;
        parcelZza.writeInt(z ? 1 : 0);
        zzda(17, parcelZza);
    }

    @Override
    public final void zzk() throws RemoteException {
        zzda(1, zza());
    }

    @Override
    public final void zzl(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(null);
        aue.f(parcelZza, iObjectWrapper);
        zzda(6, parcelZza);
    }

    @Override
    public final void zzm(zzdk zzdkVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzdkVar);
        zzda(16, parcelZza);
    }

    @Override
    public final void zzn(IObjectWrapper iObjectWrapper, String str) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        parcelZza.writeString(str);
        zzda(5, parcelZza);
    }

    @Override
    public final void zzo(zzboy zzboyVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzboyVar);
        zzda(11, parcelZza);
    }

    @Override
    public final void zzp(boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        ClassLoader classLoader = aue.a;
        parcelZza.writeInt(z ? 1 : 0);
        zzda(4, parcelZza);
    }

    @Override
    public final void zzq(float f) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeFloat(f);
        zzda(2, parcelZza);
    }

    @Override
    public final void zzr(String str) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzs(zzblo zzbloVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbloVar);
        zzda(12, parcelZza);
    }

    @Override
    public final void zzt(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzda(18, parcelZza);
    }

    @Override
    public final void zzu(zzfr zzfrVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzfrVar);
        zzda(14, parcelZza);
    }

    @Override
    public final boolean zzv() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(8, zza());
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }
}
