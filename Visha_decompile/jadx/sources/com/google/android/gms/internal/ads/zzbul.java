package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.aue;

public abstract class zzbul extends zzaxy implements zzbum {
    public zzbul() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbuq zzbuoVar = null;
        zzbur zzburVar = null;
        zzbuq zzbuoVar2 = null;
        zzbuq zzbuoVar3 = null;
        zzbuq zzbuoVar4 = null;
        switch (i) {
            case 1:
                aue.c(parcel);
                parcel2.writeNoException();
                aue.e(parcel2, null);
                return true;
            case 2:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    boolean z = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener") instanceof zzbun;
                }
                aue.c(parcel);
                parcel2.writeNoException();
                return true;
            case 3:
            default:
                return false;
            case 4:
                zzbuy zzbuyVar = (zzbuy) aue.a(parcel, zzbuy.CREATOR);
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzbuoVar = iInterfaceQueryLocalInterface instanceof zzbuq ? (zzbuq) iInterfaceQueryLocalInterface : new zzbuo(strongBinder2);
                }
                aue.c(parcel);
                zzg(zzbuyVar, zzbuoVar);
                parcel2.writeNoException();
                return true;
            case 5:
                zzbuy zzbuyVar2 = (zzbuy) aue.a(parcel, zzbuy.CREATOR);
                IBinder strongBinder3 = parcel.readStrongBinder();
                if (strongBinder3 != null) {
                    IInterface iInterfaceQueryLocalInterface2 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzbuoVar4 = iInterfaceQueryLocalInterface2 instanceof zzbuq ? (zzbuq) iInterfaceQueryLocalInterface2 : new zzbuo(strongBinder3);
                }
                aue.c(parcel);
                zzf(zzbuyVar2, zzbuoVar4);
                parcel2.writeNoException();
                return true;
            case 6:
                zzbuy zzbuyVar3 = (zzbuy) aue.a(parcel, zzbuy.CREATOR);
                IBinder strongBinder4 = parcel.readStrongBinder();
                if (strongBinder4 != null) {
                    IInterface iInterfaceQueryLocalInterface3 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzbuoVar3 = iInterfaceQueryLocalInterface3 instanceof zzbuq ? (zzbuq) iInterfaceQueryLocalInterface3 : new zzbuo(strongBinder4);
                }
                aue.c(parcel);
                zze(zzbuyVar3, zzbuoVar3);
                parcel2.writeNoException();
                return true;
            case 7:
                String string = parcel.readString();
                IBinder strongBinder5 = parcel.readStrongBinder();
                if (strongBinder5 != null) {
                    IInterface iInterfaceQueryLocalInterface4 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    zzbuoVar2 = iInterfaceQueryLocalInterface4 instanceof zzbuq ? (zzbuq) iInterfaceQueryLocalInterface4 : new zzbuo(strongBinder5);
                }
                aue.c(parcel);
                zzh(string, zzbuoVar2);
                parcel2.writeNoException();
                return true;
            case 8:
                zzbui zzbuiVar = (zzbui) aue.a(parcel, zzbui.CREATOR);
                IBinder strongBinder6 = parcel.readStrongBinder();
                if (strongBinder6 != null) {
                    IInterface iInterfaceQueryLocalInterface5 = strongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.request.ITrustlessTokenListener");
                    zzburVar = iInterfaceQueryLocalInterface5 instanceof zzbur ? (zzbur) iInterfaceQueryLocalInterface5 : new zzbur(strongBinder6);
                }
                aue.c(parcel);
                zzi(zzbuiVar, zzburVar);
                parcel2.writeNoException();
                return true;
        }
    }
}
