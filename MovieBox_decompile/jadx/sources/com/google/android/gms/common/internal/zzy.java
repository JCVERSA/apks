package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;

public final class zzy extends com.google.android.gms.internal.common.zza implements zzaa {
    zzy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override
    public final int zzc() throws RemoteException {
        Parcel parcelZzB = zzB(2, zza());
        int i10 = parcelZzB.readInt();
        parcelZzB.recycle();
        return i10;
    }

    @Override
    public final IObjectWrapper zzd() throws RemoteException {
        Parcel parcelZzB = zzB(1, zza());
        IObjectWrapper iObjectWrapperAsInterface = IObjectWrapper.Stub.asInterface(parcelZzB.readStrongBinder());
        parcelZzB.recycle();
        return iObjectWrapperAsInterface;
    }
}
