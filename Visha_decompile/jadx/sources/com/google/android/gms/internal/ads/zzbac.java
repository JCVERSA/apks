package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zze;
import defpackage.aue;

public abstract class zzbac extends zzaxy implements zzbad {
    public zzbac() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    public static zzbad zze(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
        return iInterfaceQueryLocalInterface instanceof zzbad ? (zzbad) iInterfaceQueryLocalInterface : new zzbab(iBinder);
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbaa zzazyVar;
        if (i == 1) {
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                zzazyVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
                zzazyVar = iInterfaceQueryLocalInterface instanceof zzbaa ? (zzbaa) iInterfaceQueryLocalInterface : new zzazy(strongBinder);
            }
            aue.c(parcel);
            zzd(zzazyVar);
        } else if (i == 2) {
            parcel.readInt();
            aue.c(parcel);
        } else {
            if (i != 3) {
                return false;
            }
            zze zzeVar = (zze) aue.a(parcel, zze.CREATOR);
            aue.c(parcel);
            zzc(zzeVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
