package com.google.android.gms.maps.internal;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

public abstract class zzi extends com.google.android.gms.internal.maps.zzb implements zzh {
    public zzi() {
        super("com.google.android.gms.maps.internal.IInfoWindowAdapter");
    }

    @Override
    protected final boolean dispatchTransaction(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            IObjectWrapper iObjectWrapperZzh = zzh(com.google.android.gms.internal.maps.zzu.zzg(parcel.readStrongBinder()));
            parcel2.writeNoException();
            com.google.android.gms.internal.maps.zzc.zza(parcel2, iObjectWrapperZzh);
        } else {
            if (i10 != 2) {
                return false;
            }
            IObjectWrapper iObjectWrapperZzi = zzi(com.google.android.gms.internal.maps.zzu.zzg(parcel.readStrongBinder()));
            parcel2.writeNoException();
            com.google.android.gms.internal.maps.zzc.zza(parcel2, iObjectWrapperZzi);
        }
        return true;
    }
}
