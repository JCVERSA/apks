package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzdz;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;

public final class zzbqv extends zzaxx implements zzbqx {
    public zzbqv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override
    public final zzea zze() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(5, zza());
        zzea zzeaVarZzb = zzdz.zzb(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return zzeaVarZzb;
    }

    @Override
    public final zzbrm zzf() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(2, zza());
        zzbrm zzbrmVar = (zzbrm) aue.a(parcelZzcZ, zzbrm.CREATOR);
        parcelZzcZ.recycle();
        return zzbrmVar;
    }

    @Override
    public final zzbrm zzg() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(3, zza());
        zzbrm zzbrmVar = (zzbrm) aue.a(parcelZzcZ, zzbrm.CREATOR);
        parcelZzcZ.recycle();
        return zzbrmVar;
    }

    @Override
    public final void zzh(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, com.google.android.gms.ads.internal.client.zzr zzrVar, zzbra zzbraVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        parcelZza.writeString(str);
        aue.d(parcelZza, bundle);
        aue.d(parcelZza, bundle2);
        aue.d(parcelZza, zzrVar);
        aue.f(parcelZza, zzbraVar);
        zzda(1, parcelZza);
    }

    @Override
    public final void zzi(String str, String str2, zzm zzmVar, IObjectWrapper iObjectWrapper, zzbqi zzbqiVar, zzbpe zzbpeVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        aue.d(parcelZza, zzmVar);
        aue.f(parcelZza, iObjectWrapper);
        aue.f(parcelZza, zzbqiVar);
        aue.f(parcelZza, zzbpeVar);
        zzda(23, parcelZza);
    }

    @Override
    public final void zzj(String str, String str2, zzm zzmVar, IObjectWrapper iObjectWrapper, zzbql zzbqlVar, zzbpe zzbpeVar, com.google.android.gms.ads.internal.client.zzr zzrVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        aue.d(parcelZza, zzmVar);
        aue.f(parcelZza, iObjectWrapper);
        aue.f(parcelZza, zzbqlVar);
        aue.f(parcelZza, zzbpeVar);
        aue.d(parcelZza, zzrVar);
        zzda(13, parcelZza);
    }

    @Override
    public final void zzk(String str, String str2, zzm zzmVar, IObjectWrapper iObjectWrapper, zzbql zzbqlVar, zzbpe zzbpeVar, com.google.android.gms.ads.internal.client.zzr zzrVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        aue.d(parcelZza, zzmVar);
        aue.f(parcelZza, iObjectWrapper);
        aue.f(parcelZza, zzbqlVar);
        aue.f(parcelZza, zzbpeVar);
        aue.d(parcelZza, zzrVar);
        zzda(21, parcelZza);
    }

    @Override
    public final void zzl(String str, String str2, zzm zzmVar, IObjectWrapper iObjectWrapper, zzbqo zzbqoVar, zzbpe zzbpeVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        aue.d(parcelZza, zzmVar);
        aue.f(parcelZza, iObjectWrapper);
        aue.f(parcelZza, zzbqoVar);
        aue.f(parcelZza, zzbpeVar);
        zzda(14, parcelZza);
    }

    @Override
    public final void zzm(String str, String str2, zzm zzmVar, IObjectWrapper iObjectWrapper, zzbqr zzbqrVar, zzbpe zzbpeVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        aue.d(parcelZza, zzmVar);
        aue.f(parcelZza, iObjectWrapper);
        aue.f(parcelZza, zzbqrVar);
        aue.f(parcelZza, zzbpeVar);
        zzda(18, parcelZza);
    }

    @Override
    public final void zzn(String str, String str2, zzm zzmVar, IObjectWrapper iObjectWrapper, zzbqr zzbqrVar, zzbpe zzbpeVar, zzbfi zzbfiVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        aue.d(parcelZza, zzmVar);
        aue.f(parcelZza, iObjectWrapper);
        aue.f(parcelZza, zzbqrVar);
        aue.f(parcelZza, zzbpeVar);
        aue.d(parcelZza, zzbfiVar);
        zzda(22, parcelZza);
    }

    @Override
    public final void zzo(String str, String str2, zzm zzmVar, IObjectWrapper iObjectWrapper, zzbqu zzbquVar, zzbpe zzbpeVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        aue.d(parcelZza, zzmVar);
        aue.f(parcelZza, iObjectWrapper);
        aue.f(parcelZza, zzbquVar);
        aue.f(parcelZza, zzbpeVar);
        zzda(20, parcelZza);
    }

    @Override
    public final void zzp(String str, String str2, zzm zzmVar, IObjectWrapper iObjectWrapper, zzbqu zzbquVar, zzbpe zzbpeVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        parcelZza.writeString(str2);
        aue.d(parcelZza, zzmVar);
        aue.f(parcelZza, iObjectWrapper);
        aue.f(parcelZza, zzbquVar);
        aue.f(parcelZza, zzbpeVar);
        zzda(16, parcelZza);
    }

    @Override
    public final void zzq(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        zzda(19, parcelZza);
    }

    @Override
    public final boolean zzr(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        Parcel parcelZzcZ = zzcZ(24, parcelZza);
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    @Override
    public final boolean zzs(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        Parcel parcelZzcZ = zzcZ(15, parcelZza);
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    @Override
    public final boolean zzt(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        Parcel parcelZzcZ = zzcZ(17, parcelZza);
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }
}
