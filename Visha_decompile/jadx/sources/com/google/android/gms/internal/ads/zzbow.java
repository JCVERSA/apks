package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public final class zzbow extends zzaxx implements zzboy {
    public zzbow(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    @Override
    public final zzbpb zzb(String str) throws RemoteException {
        zzbpb zzbozVar;
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzcZ = zzcZ(1, parcelZza);
        IBinder strongBinder = parcelZzcZ.readStrongBinder();
        if (strongBinder == null) {
            zzbozVar = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            zzbozVar = iInterfaceQueryLocalInterface instanceof zzbpb ? (zzbpb) iInterfaceQueryLocalInterface : new zzboz(strongBinder);
        }
        parcelZzcZ.recycle();
        return zzbozVar;
    }

    @Override
    public final zzbqx zzc(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzcZ = zzcZ(3, parcelZza);
        zzbqx zzbqxVarZzb = zzbqw.zzb(parcelZzcZ.readStrongBinder());
        parcelZzcZ.recycle();
        return zzbqxVarZzb;
    }

    @Override
    public final boolean zzd(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzcZ = zzcZ(4, parcelZza);
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }

    @Override
    public final boolean zze(String str) throws RemoteException {
        Parcel parcelZza = zza();
        parcelZza.writeString(str);
        Parcel parcelZzcZ = zzcZ(2, parcelZza);
        boolean zG = aue.g(parcelZzcZ);
        parcelZzcZ.recycle();
        return zG;
    }
}
