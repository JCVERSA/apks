package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzaxx;
import com.google.android.gms.internal.ads.zzbad;
import com.google.android.gms.internal.ads.zzbdd;
import com.google.android.gms.internal.ads.zzbth;
import com.google.android.gms.internal.ads.zzbtk;
import com.google.android.gms.internal.ads.zzbvq;
import defpackage.aue;

public final class zzbv extends zzaxx implements zzbx {
    public zzbv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManager");
    }

    @Override
    public final void zzA() throws RemoteException {
        zzda(11, zza());
    }

    @Override
    public final void zzB() throws RemoteException {
        zzda(6, zza());
    }

    @Override
    public final void zzC(zzbh zzbhVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbhVar);
        zzda(20, parcelZza);
    }

    @Override
    public final void zzD(zzbk zzbkVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbkVar);
        zzda(7, parcelZza);
    }

    @Override
    public final void zzE(zzcb zzcbVar) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzF(zzr zzrVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzrVar);
        zzda(13, parcelZza);
    }

    @Override
    public final void zzG(zzcl zzclVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzclVar);
        zzda(8, parcelZza);
    }

    @Override
    public final void zzH(zzbad zzbadVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbadVar);
        zzda(40, parcelZza);
    }

    @Override
    public final void zzI(zzx zzxVar) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzJ(zzcs zzcsVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzcsVar);
        zzda(45, parcelZza);
    }

    @Override
    public final void zzK(zzee zzeeVar) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzL(boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        ClassLoader classLoader = aue.a;
        parcelZza.writeInt(z ? 1 : 0);
        zzda(34, parcelZza);
    }

    @Override
    public final void zzM(zzbth zzbthVar) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzN(boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        ClassLoader classLoader = aue.a;
        parcelZza.writeInt(z ? 1 : 0);
        zzda(22, parcelZza);
    }

    @Override
    public final void zzO(zzbdd zzbddVar) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzP(zzdq zzdqVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzdqVar);
        zzda(42, parcelZza);
    }

    @Override
    public final void zzQ(zzbtk zzbtkVar, String str) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzR(String str) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzS(zzbvq zzbvqVar) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzT(String str) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzU(zzfw zzfwVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzfwVar);
        zzda(29, parcelZza);
    }

    @Override
    public final void zzW(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        zzda(44, parcelZza);
    }

    @Override
    public final void zzX() throws RemoteException {
        throw null;
    }

    @Override
    public final boolean zzY() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(46, zza());
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    @Override
    public final boolean zzZ() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(23, zza());
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    @Override
    public final boolean zzaa() throws RemoteException {
        throw null;
    }

    @Override
    public final boolean zzab(zzm zzmVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzmVar);
        Parcel parcelZzcZ = zzcZ(4, parcelZza);
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    @Override
    public final void zzac(zzcp zzcpVar) throws RemoteException {
        throw null;
    }

    @Override
    public final Bundle zzd() throws RemoteException {
        throw null;
    }

    @Override
    public final zzr zzg() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(12, zza());
        zzr zzrVar = (zzr) aue.a(parcelZzcZ, zzr.CREATOR);
        parcelZzcZ.recycle();
        return zzrVar;
    }

    @Override
    public final zzbk zzi() throws RemoteException {
        zzbk zzbiVar;
        Parcel parcelZzcZ = zzcZ(33, zza());
        IBinder strongBinder = parcelZzcZ.readStrongBinder();
        if (strongBinder == null) {
            zzbiVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
            zzbiVar = iInterfaceQueryLocalInterface instanceof zzbk ? (zzbk) iInterfaceQueryLocalInterface : new zzbi(strongBinder);
        }
        parcelZzcZ.recycle();
        return zzbiVar;
    }

    @Override
    public final zzcl zzj() throws RemoteException {
        zzcl zzcjVar;
        Parcel parcelZzcZ = zzcZ(32, zza());
        IBinder strongBinder = parcelZzcZ.readStrongBinder();
        if (strongBinder == null) {
            zzcjVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
            zzcjVar = iInterfaceQueryLocalInterface instanceof zzcl ? (zzcl) iInterfaceQueryLocalInterface : new zzcj(strongBinder);
        }
        parcelZzcZ.recycle();
        return zzcjVar;
    }

    @Override
    public final zzdx zzk() throws RemoteException {
        zzdx zzdvVar;
        Parcel parcelZzcZ = zzcZ(41, zza());
        IBinder strongBinder = parcelZzcZ.readStrongBinder();
        if (strongBinder == null) {
            zzdvVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
            zzdvVar = iInterfaceQueryLocalInterface instanceof zzdx ? (zzdx) iInterfaceQueryLocalInterface : new zzdv(strongBinder);
        }
        parcelZzcZ.recycle();
        return zzdvVar;
    }

    @Override
    public final zzea zzl() throws RemoteException {
        zzea zzdyVar;
        Parcel parcelZzcZ = zzcZ(26, zza());
        IBinder strongBinder = parcelZzcZ.readStrongBinder();
        if (strongBinder == null) {
            zzdyVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
            zzdyVar = iInterfaceQueryLocalInterface instanceof zzea ? (zzea) iInterfaceQueryLocalInterface : new zzdy(strongBinder);
        }
        parcelZzcZ.recycle();
        return zzdyVar;
    }

    @Override
    public final IObjectWrapper zzn() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(1, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return iObjectWrapperAsInterface;
    }

    @Override
    public final String zzr() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(31, zza());
        String string = parcelZzcZ.readString();
        parcelZzcZ.recycle();
        return string;
    }

    @Override
    public final String zzs() throws RemoteException {
        throw null;
    }

    @Override
    public final String zzt() throws RemoteException {
        throw null;
    }

    @Override
    public final void zzx() throws RemoteException {
        zzda(2, zza());
    }

    @Override
    public final void zzy(zzm zzmVar, zzbn zzbnVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzmVar);
        aue.f(parcelZza, zzbnVar);
        zzda(43, parcelZza);
    }

    @Override
    public final void zzz() throws RemoteException {
        zzda(5, zza());
    }
}
