package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.ads.internal.client.zzdp;
import com.google.android.gms.ads.internal.client.zzdq;
import com.google.android.gms.ads.internal.client.zzdx;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;

public abstract class zzazz extends zzaxy implements zzbaa {
    public zzazz() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    public static zzbaa zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
        return iInterfaceQueryLocalInterface instanceof zzbaa ? (zzbaa) iInterfaceQueryLocalInterface : new zzazy(iBinder);
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbah zzbafVar;
        switch (i) {
            case 2:
                zzbx zzbxVarZze = zze();
                parcel2.writeNoException();
                aue.f(parcel2, zzbxVarZze);
                return true;
            case 3:
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    boolean z = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback") instanceof zzbae;
                }
                aue.c(parcel);
                parcel2.writeNoException();
                return true;
            case 4:
                IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IBinder strongBinder2 = parcel.readStrongBinder();
                if (strongBinder2 == null) {
                    zzbafVar = null;
                } else {
                    IInterface iInterfaceQueryLocalInterface = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
                    zzbafVar = iInterfaceQueryLocalInterface instanceof zzbah ? (zzbah) iInterfaceQueryLocalInterface : new zzbaf(strongBinder2);
                }
                aue.c(parcel);
                zzi(iObjectWrapperAsInterface, zzbafVar);
                parcel2.writeNoException();
                return true;
            case 5:
                zzdx zzdxVarZzf = zzf();
                parcel2.writeNoException();
                aue.f(parcel2, zzdxVarZzf);
                return true;
            case 6:
                boolean zG = aue.g(parcel);
                aue.c(parcel);
                zzg(zG);
                parcel2.writeNoException();
                return true;
            case 7:
                zzdq zzdqVarZzb = zzdp.zzb(parcel.readStrongBinder());
                aue.c(parcel);
                zzh(zzdqVarZzb);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
