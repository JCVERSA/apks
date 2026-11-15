package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaxx;
import com.google.android.gms.internal.ads.zzazz;
import com.google.android.gms.internal.ads.zzbaa;
import com.google.android.gms.internal.ads.zzboy;
import com.google.android.gms.internal.ads.zzbwc;
import com.google.android.gms.internal.ads.zzbwd;
import defpackage.aue;
import java.util.List;

public final class zzcf extends zzaxx implements zzch {
    public zzcf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdPreloader");
    }

    @Override
    public final zzbaa zze(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzcZ = zzcZ(5, parcelZza);
        zzbaa zzbaaVarZzb = zzazz.zzb(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return zzbaaVarZzb;
    }

    @Override
    public final zzbx zzf(String str) throws RemoteException {
        zzbx zzbvVar;
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzcZ = zzcZ(7, parcelZza);
        IBinder strongBinder = parcelZzcZ.readStrongBinder();
        if (strongBinder == null) {
            zzbvVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzbvVar = iInterfaceQueryLocalInterface instanceof zzbx ? (zzbx) iInterfaceQueryLocalInterface : new zzbv(strongBinder);
        }
        parcelZzcZ.recycle();
        return zzbvVar;
    }

    @Override
    public final zzbwd zzg(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzcZ = zzcZ(3, parcelZza);
        zzbwd zzbwdVarZzq = zzbwc.zzq(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return zzbwdVarZzq;
    }

    @Override
    public final void zzh(zzboy zzboyVar) throws RemoteException {
        Parcel parcelZza = zza();
        aue.f(parcelZza, zzboyVar);
        zzda(8, parcelZza);
    }

    @Override
    public final void zzi(List list, zzce zzceVar) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeTypedList(list);
        aue.f(parcelZza, zzceVar);
        zzda(1, parcelZza);
    }

    @Override
    public final boolean zzj(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzcZ = zzcZ(4, parcelZza);
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    @Override
    public final boolean zzk(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzcZ = zzcZ(6, parcelZza);
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    @Override
    public final boolean zzl(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzcZ = zzcZ(2, parcelZza);
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }
}
