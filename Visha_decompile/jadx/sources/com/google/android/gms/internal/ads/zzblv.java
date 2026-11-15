package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.zzea;
import com.google.android.gms.dynamic.IObjectWrapper;
import defpackage.aue;

public abstract class zzblv extends zzaxy implements zzblw {
    public zzblv() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override
    public final boolean zzdD(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzblz zzblxVar;
        if (i == 3) {
            zzea zzeaVarZzb = zzb();
            parcel2.writeNoException();
            aue.f(parcel2, zzeaVarZzb);
            return true;
        }
        if (i == 4) {
            zzd();
            parcel2.writeNoException();
            return true;
        }
        if (i == 5) {
            IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                zzblxVar = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                zzblxVar = iInterfaceQueryLocalInterface instanceof zzblz ? (zzblz) iInterfaceQueryLocalInterface : new zzblx(strongBinder);
            }
            aue.c(parcel);
            zzf(iObjectWrapperAsInterface, zzblxVar);
            parcel2.writeNoException();
            return true;
        }
        if (i == 6) {
            IObjectWrapper iObjectWrapperAsInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            aue.c(parcel);
            zze(iObjectWrapperAsInterface2);
            parcel2.writeNoException();
            return true;
        }
        if (i != 7) {
            return false;
        }
        zzbfq zzbfqVarZzc = zzc();
        parcel2.writeNoException();
        aue.f(parcel2, zzbfqVarZzc);
        return true;
    }
}
