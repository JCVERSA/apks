package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zze;
import defpackage.aue;

public final class zzbpc extends zzaxx implements zzbpe {
    public zzbpc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    @Override
    public final void zze() throws RemoteException {
        zzda(1, zza());
    }

    @Override
    public final void zzf() throws RemoteException {
        zzda(2, zza());
    }

    @Override
    public final void zzg(int i) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        zzda(3, parcelZza);
    }

    @Override
    public final void zzh(zze zzeVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzeVar);
        zzda(23, parcelZza);
    }

    @Override
    public final void zzi(int i, String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeInt(i);
        parcelZza.writeString(str);
        zzda(22, parcelZza);
    }

    @Override
    public final void zzj(int i) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzk(zze zzeVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzeVar);
        zzda(24, parcelZza);
    }

    @Override
    public final void zzl(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzda(21, parcelZza);
    }

    @Override
    public final void zzm() throws RemoteException {
        zzda(8, zza());
    }

    @Override
    public final void zzn() throws RemoteException {
        zzda(4, zza());
    }

    @Override
    public final void zzo() throws RemoteException {
        zzda(6, zza());
    }

    @Override
    public final void zzp() throws RemoteException {
        zzda(5, zza());
    }

    @Override
    public final void zzq(String str, String str2) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        zzda(9, parcelZza);
    }

    @Override
    public final void zzr(zzbgn zzbgnVar, String str) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbgnVar);
        parcelZza.writeString(str);
        zzda(10, parcelZza);
    }

    @Override
    public final void zzs(zzbvw zzbvwVar) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzt(zzbwa zzbwaVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbwaVar);
        zzda(16, parcelZza);
    }

    @Override
    public final void zzu() throws RemoteException {
        zzda(25, zza());
    }

    @Override
    public final void zzv() throws RemoteException {
        zzda(18, zza());
    }

    @Override
    public final void zzw() throws RemoteException {
        zzda(11, zza());
    }

    @Override
    public final void zzx() throws RemoteException {
        zzda(15, zza());
    }

    @Override
    public final void zzy() throws RemoteException {
        zzda(20, zza());
    }

    @Override
    public final void zzz() throws RemoteException {
        zzda(13, zza());
    }
}
