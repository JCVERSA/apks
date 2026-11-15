package com.google.android.gms.cloudmessaging;

import android.os.Parcel;
import android.os.Parcelable;

final class zzb implements Parcelable.Creator {
    zzb() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzd(parcel.readStrongBinder());
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzd[i10];
    }
}
