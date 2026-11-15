package com.google.android.gms.maps.internal;

import android.graphics.Bitmap;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

public abstract class zzbt extends com.google.android.gms.internal.maps.zzb implements zzbs {
    public zzbt() {
        super("com.google.android.gms.maps.internal.ISnapshotReadyCallback");
    }

    @Override
    protected final boolean dispatchTransaction(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 == 1) {
            onSnapshotReady((Bitmap) com.google.android.gms.internal.maps.zzc.zza(parcel, Bitmap.CREATOR));
        } else {
            if (i10 != 2) {
                return false;
            }
            zzb(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
