package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zzdw;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;

public final class zzbwb extends zzaxx implements zzbwd {
    public zzbwb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override
    public final Bundle zzb() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(9, zza());
        Bundle bundle = (Bundle) aue.a(parcelZzcZ, Bundle.CREATOR);
        parcelZzcZ.recycle();
        return bundle;
    }

    @Override
    public final zzdx zzc() throws RemoteException {
        Parcel parcelZzcZ = zzcZ(12, zza());
        zzdx zzdxVarZzb = zzdw.zzb(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return zzdxVarZzb;
    }

    @Override
    public final zzbwa zzd() throws RemoteException {
        zzbwa zzbvyVar;
        Parcel parcelZzcZ = zzcZ(11, zza());
        IBinder strongBinder = parcelZzcZ.readStrongBinder();
        if (strongBinder == null) {
            zzbvyVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
            zzbvyVar = iInterfaceQueryLocalInterface instanceof zzbwa ? (zzbwa) iInterfaceQueryLocalInterface : new zzbvy(strongBinder);
        }
        parcelZzcZ.recycle();
        return zzbvyVar;
    }

    @Override
    public final String zze() throws RemoteException {
        throw null;
    }

    @Override
    public final void zzf(zzm zzmVar, zzbwk zzbwkVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzmVar);
        aue.f(parcelZza, zzbwkVar);
        zzda(1, parcelZza);
    }

    @Override
    public final void zzg(zzm zzmVar, zzbwk zzbwkVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzmVar);
        aue.f(parcelZza, zzbwkVar);
        zzda(14, parcelZza);
    }

    @Override
    public final void zzh(boolean z) throws RemoteException {
        Parcel parcelZza = zza();
        ClassLoader classLoader = aue.a;
        parcelZza.writeInt(z ? 1 : 0);
        zzda(15, parcelZza);
    }

    @Override
    public final void zzi(com.google.android.gms.ads.internal.client.zzdn zzdnVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzdnVar);
        zzda(8, parcelZza);
    }

    @Override
    public final void zzj(zzdq zzdqVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzdqVar);
        zzda(13, parcelZza);
    }

    @Override
    public final void zzk(zzbwg zzbwgVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbwgVar);
        zzda(2, parcelZza);
    }

    @Override
    public final void zzl(zzbwr zzbwrVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzbwrVar);
        zzda(7, parcelZza);
    }

    @Override
    public final void zzm(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, iObjectWrapper);
        zzda(5, parcelZza);
    }

    @Override
    public final void zzn(IObjectWrapper iObjectWrapper, boolean z) throws RemoteException {
        throw null;
    }

    @Override
    public final boolean zzo() throws RemoteException {
        throw null;
    }

    @Override
    public final void zzp(zzbwl zzbwlVar) throws RemoteException {
        throw null;
    }
}
