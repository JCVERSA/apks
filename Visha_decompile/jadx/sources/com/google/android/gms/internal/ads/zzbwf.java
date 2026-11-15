package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zze;
import defpackage.aue;

public abstract class zzbwf extends zzaxy implements zzbwg {
    public zzbwf() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbwa zzbvyVar;
        switch (i) {
            case 1:
                zzj();
                break;
            case 2:
                zzg();
                break;
            case 3:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder == null) {
                    zzbvyVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
                    zzbvyVar = iInterfaceQueryLocalInterface instanceof zzbwa ? (zzbwa) iInterfaceQueryLocalInterface : new zzbvy(strongBinder);
                }
                aue.c(parcel);
                zzk(zzbvyVar);
                break;
            case 4:
                int i3 = parcel.readInt();
                aue.c(parcel);
                zzh(i3);
                break;
            case 5:
                zze zzeVar = (zze) aue.a(parcel, zze.CREATOR);
                aue.c(parcel);
                zzi(zzeVar);
                break;
            case 6:
                zzf();
                break;
            case 7:
                zze();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
