package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzca;
import com.google.android.gms.ads.internal.client.zzcb;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;

public abstract class zzbvm extends zzaxy implements zzbvn {
    public zzbvm() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzbvr zzbvrVar = (zzbvr) aue.a(parcel, zzbvr.CREATOR);
            aue.c(parcel);
            zzg(zzbvrVar);
            parcel2.writeNoException();
        } else if (i != 2) {
            zzbvq zzbvoVar = null;
            zzbvl zzbvlVar = null;
            if (i == 3) {
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                    zzbvoVar = iInterfaceQueryLocalInterface instanceof zzbvq ? (zzbvq) iInterfaceQueryLocalInterface : new zzbvo(strongBinder);
                }
                aue.c(parcel);
                zzo(zzbvoVar);
                parcel2.writeNoException();
            } else if (i != 34) {
                switch (i) {
                    case 5:
                        boolean zZzs = zzs();
                        parcel2.writeNoException();
                        ClassLoader classLoader = aue.a;
                        parcel2.writeInt(zZzs ? 1 : 0);
                        break;
                    case 6:
                        zzh();
                        parcel2.writeNoException();
                        break;
                    case 7:
                        zzj();
                        parcel2.writeNoException();
                        break;
                    case 8:
                        zze();
                        parcel2.writeNoException();
                        break;
                    case 9:
                        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                        aue.c(parcel);
                        zzi(iObjectWrapperAsInterface);
                        parcel2.writeNoException();
                        break;
                    case 10:
                        IObjectWrapper iObjectWrapperAsInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                        aue.c(parcel);
                        zzk(iObjectWrapperAsInterface2);
                        parcel2.writeNoException();
                        break;
                    case 11:
                        IObjectWrapper iObjectWrapperAsInterface3 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                        aue.c(parcel);
                        zzf(iObjectWrapperAsInterface3);
                        parcel2.writeNoException();
                        break;
                    case 12:
                        String strZzd = zzd();
                        parcel2.writeNoException();
                        parcel2.writeString(strZzd);
                        break;
                    case 13:
                        String string = parcel.readString();
                        aue.c(parcel);
                        zzp(string);
                        parcel2.writeNoException();
                        break;
                    case 14:
                        zzcb zzcbVarZzb = zzca.zzb(parcel.readStrongBinder());
                        aue.c(parcel);
                        zzl(zzcbVarZzb);
                        parcel2.writeNoException();
                        break;
                    case 15:
                        Bundle bundleZzb = zzb();
                        parcel2.writeNoException();
                        aue.e(parcel2, bundleZzb);
                        break;
                    case 16:
                        IBinder strongBinder2 = parcel.readStrongBinder();
                        if (strongBinder2 != null) {
                            IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                            zzbvlVar = iInterfaceQueryLocalInterface2 instanceof zzbvl ? (zzbvl) iInterfaceQueryLocalInterface2 : new zzbvl(strongBinder2);
                        }
                        aue.c(parcel);
                        zzu(zzbvlVar);
                        parcel2.writeNoException();
                        break;
                    case 17:
                        parcel.readString();
                        aue.c(parcel);
                        parcel2.writeNoException();
                        break;
                    case 18:
                        IObjectWrapper iObjectWrapperAsInterface4 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                        aue.c(parcel);
                        zzr(iObjectWrapperAsInterface4);
                        parcel2.writeNoException();
                        break;
                    case 19:
                        String string2 = parcel.readString();
                        aue.c(parcel);
                        zzm(string2);
                        parcel2.writeNoException();
                        break;
                    case 20:
                        boolean zZzt = zzt();
                        parcel2.writeNoException();
                        ClassLoader classLoader2 = aue.a;
                        parcel2.writeInt(zZzt ? 1 : 0);
                        break;
                    case 21:
                        zzdx zzdxVarZzc = zzc();
                        parcel2.writeNoException();
                        aue.f(parcel2, zzdxVarZzc);
                        break;
                    default:
                        return false;
                }
            } else {
                boolean zG = aue.g(parcel);
                aue.c(parcel);
                zzn(zG);
                parcel2.writeNoException();
            }
        } else {
            zzq();
            parcel2.writeNoException();
        }
        return true;
    }
}
