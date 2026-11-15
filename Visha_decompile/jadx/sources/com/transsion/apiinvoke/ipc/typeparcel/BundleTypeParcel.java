package com.transsion.apiinvoke.ipc.typeparcel;

import android.os.Bundle;
import android.os.Parcel;
import com.transsion.apiinvoke.ipc.ITypeParcel;

public class BundleTypeParcel implements ITypeParcel<Bundle> {
    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Bundle readFormParcel(Parcel parcel, Class cls) {
        return parcel.readInt() != 0 ? parcel.readBundle() : new Bundle();
    }

    @Override
    public void writeToParcel(Parcel parcel, Class cls, Bundle bundle, int i) {
        if (bundle == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcel.writeBundle(bundle);
        }
    }
}
