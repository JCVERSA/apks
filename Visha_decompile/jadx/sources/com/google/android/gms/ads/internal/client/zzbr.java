package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzaxx;
import com.google.android.gms.internal.ads.zzbfi;
import com.google.android.gms.internal.ads.zzbgr;
import com.google.android.gms.internal.ads.zzbgu;
import com.google.android.gms.internal.ads.zzbgx;
import com.google.android.gms.internal.ads.zzbha;
import com.google.android.gms.internal.ads.zzbhe;
import com.google.android.gms.internal.ads.zzbhh;
import com.google.android.gms.internal.ads.zzblt;
import com.google.android.gms.internal.ads.zzbmc;
import defpackage.aue;

public final class zzbr extends zzaxx implements zzbt {
    public zzbr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override
    public final zzbq zze() throws RemoteException {
        zzbq zzboVar;
        Parcel parcelZzcZ = zzcZ(1, zza());
        IBinder strongBinder = parcelZzcZ.readStrongBinder();
        if (strongBinder == null) {
            zzboVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            zzboVar = iInterfaceQueryLocalInterface instanceof zzbq ? (zzbq) iInterfaceQueryLocalInterface : new zzbo(strongBinder);
        }
        parcelZzcZ.recycle();
        return zzboVar;
    }

    @Override
    public final void zzf(zzbgr zzbgrVar) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzg(zzbgu zzbguVar) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzh(String str, zzbha zzbhaVar, zzbgx zzbgxVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        aue.f(parcelZza, zzbhaVar);
        aue.f(parcelZza, zzbgxVar);
        zzda(5, parcelZza);
    }

    @Override
    public final void zzi(zzbmc zzbmcVar) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzj(zzbhe zzbheVar, zzr zzrVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbheVar);
        aue.d(parcelZza, zzrVar);
        zzda(8, parcelZza);
    }

    @Override
    public final void zzk(zzbhh zzbhhVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbhhVar);
        zzda(10, parcelZza);
    }

    @Override
    public final void zzl(zzbk zzbkVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzbkVar);
        zzda(2, parcelZza);
    }

    @Override
    public final void zzm(AdManagerAdViewOptions adManagerAdViewOptions) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, adManagerAdViewOptions);
        zzda(15, parcelZza);
    }

    @Override
    public final void zzn(zzblt zzbltVar) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzo(zzbfi zzbfiVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.d(parcelZza, zzbfiVar);
        zzda(6, parcelZza);
    }

    @Override
    public final void zzp(PublisherAdViewOptions publisherAdViewOptions) throws RemoteException {
        throw null;
    }

    @Override
    public final void zzq(zzcp zzcpVar) throws RemoteException {
        throw null;
    }
}
