package io.appmetrica.analytics.identifiers.impl;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract class n extends Binder implements o {
    public n() {
        attachInterface(this, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
    }

    public static o a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
        return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof o)) ? new m(iBinder) : (o) iInterfaceQueryLocalInterface;
    }

    public abstract String a() throws RemoteException;

    @Override
    public final IBinder asBinder() {
        return this;
    }

    public abstract boolean b() throws RemoteException;

    @Override
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            parcel.enforceInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            String strA = a();
            parcel2.writeNoException();
            parcel2.writeString(strA);
            return true;
        }
        if (i != 2) {
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
            return true;
        }
        parcel.enforceInterface("com.uodis.opendevice.aidl.OpenDeviceIdentifierService");
        boolean zB = b();
        parcel2.writeNoException();
        parcel2.writeInt(zB ? 1 : 0);
        return true;
    }
}
