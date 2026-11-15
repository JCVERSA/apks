package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzdp;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;

public abstract class zzbwc extends zzaxy implements zzbwd {
    public zzbwc() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    public static zzbwd zzq(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
        return iInterfaceQueryLocalInterface instanceof zzbwd ? (zzbwd) iInterfaceQueryLocalInterface : new zzbwb(iBinder);
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbwk zzbwiVar = null;
        zzbwk zzbwiVar2 = null;
        zzbwl zzbwlVar = null;
        zzbwg zzbweVar = null;
        switch (i) {
            case 1:
                zzm zzmVar = (zzm) aue.a(parcel, zzm.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    zzbwiVar = iInterfaceQueryLocalInterface instanceof zzbwk ? (zzbwk) iInterfaceQueryLocalInterface : new zzbwi(strongBinder);
                }
                aue.c(parcel);
                zzf(zzmVar, zzbwiVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    zzbweVar = iInterfaceQueryLocalInterface2 instanceof zzbwg ? (zzbwg) iInterfaceQueryLocalInterface2 : new zzbwe(strongBinder2);
                }
                aue.c(parcel);
                zzk(zzbweVar);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zZzo = zzo();
                parcel2.writeNoException();
                ClassLoader classLoader = aue.a;
                parcel2.writeInt(zZzo ? 1 : 0);
                return true;
            case 4:
                String strZze = zze();
                parcel2.writeNoException();
                parcel2.writeString(strZze);
                return true;
            case 5:
                IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                aue.c(parcel);
                zzm(iObjectWrapperAsInterface);
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    zzbwlVar = iInterfaceQueryLocalInterface3 instanceof zzbwl ? (zzbwl) iInterfaceQueryLocalInterface3 : new zzbwl(strongBinder3);
                }
                aue.c(parcel);
                zzp(zzbwlVar);
                parcel2.writeNoException();
                return true;
            case 7:
                zzbwr zzbwrVar = (zzbwr) aue.a(parcel, zzbwr.CREATOR);
                aue.c(parcel);
                zzl(zzbwrVar);
                parcel2.writeNoException();
                return true;
            case 8:
                com.google.android.gms.ads.internal.client.zzdn zzdnVarZzb = com.google.android.gms.ads.internal.client.zzdm.zzb(parcel.readStrongBinder());
                aue.c(parcel);
                zzi(zzdnVarZzb);
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle bundleZzb = zzb();
                parcel2.writeNoException();
                aue.e(parcel2, bundleZzb);
                return true;
            case 10:
                IObjectWrapper iObjectWrapperAsInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                boolean zG = aue.g(parcel);
                aue.c(parcel);
                zzn(iObjectWrapperAsInterface2, zG);
                parcel2.writeNoException();
                return true;
            case 11:
                zzbwa zzbwaVarZzd = zzd();
                parcel2.writeNoException();
                aue.f(parcel2, zzbwaVarZzd);
                return true;
            case 12:
                zzdx zzdxVarZzc = zzc();
                parcel2.writeNoException();
                aue.f(parcel2, zzdxVarZzc);
                return true;
            case 13:
                zzdq zzdqVarZzb = zzdp.zzb(parcel.readStrongBinder());
                aue.c(parcel);
                zzj(zzdqVarZzb);
                parcel2.writeNoException();
                return true;
            case 14:
                zzm zzmVar2 = (zzm) aue.a(parcel, zzm.CREATOR);
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    zzbwiVar2 = iInterfaceQueryLocalInterface4 instanceof zzbwk ? (zzbwk) iInterfaceQueryLocalInterface4 : new zzbwi(strongBinder4);
                }
                aue.c(parcel);
                zzg(zzmVar2, zzbwiVar2);
                parcel2.writeNoException();
                return true;
            case 15:
                boolean zG2 = aue.g(parcel);
                aue.c(parcel);
                zzh(zG2);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
