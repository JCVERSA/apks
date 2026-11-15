package com.google.android.gms.iid;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

final class zzq implements Parcelable.Creator<MessengerCompat> {
    zzq() {
    }

    @Override
    public final MessengerCompat createFromParcel(Parcel parcel) {
        IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder != null) {
            return new MessengerCompat(strongBinder);
        }
        return null;
    }

    @Override
    public final MessengerCompat[] newArray(int i10) {
        return new MessengerCompat[i10];
    }
}
