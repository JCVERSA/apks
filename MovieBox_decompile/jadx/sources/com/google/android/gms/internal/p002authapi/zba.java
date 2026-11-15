package com.google.android.gms.internal.p002authapi;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public class zba implements IInterface {
    private final IBinder zba;
    private final String zbb;

    protected zba(IBinder iBinder, String str) {
        this.zba = iBinder;
        this.zbb = str;
    }

    @Override
    public final IBinder asBinder() {
        return this.zba;
    }

    protected final Parcel zba() {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.zbb);
        return parcelObtain;
    }

    protected final void zbb(int i10, Parcel parcel) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        try {
            this.zba.transact(i10, parcel, parcelObtain, 0);
            parcelObtain.readException();
        } finally {
            parcel.recycle();
            parcelObtain.recycle();
        }
    }
}
