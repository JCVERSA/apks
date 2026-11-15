package com.transsion.apiinvoke.ipc.typeparcel;

import android.os.IBinder;
import android.os.Parcel;
import com.transsion.apiinvoke.ipc.ITypeParcel;

public class IBinderTypeParcel implements ITypeParcel<IBinder> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public IBinder readFormParcel(Parcel parcel, Class cls) {
        if (parcel.readInt() != 0) {
            return parcel.readStrongBinder();
        }
        return null;
    }

    @Override
    public void writeToParcel(Parcel parcel, Class cls, IBinder iBinder, int i) {
        if (iBinder == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeStrongBinder(iBinder);
        }
    }
}
