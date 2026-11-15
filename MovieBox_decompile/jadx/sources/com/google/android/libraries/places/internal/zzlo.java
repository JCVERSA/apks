package com.google.android.libraries.places.internal;

import android.os.Parcel;
import android.os.Parcelable;

final class zzlo implements Parcelable.Creator {
    zzlo() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzlq(parcel, null);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzlq[i10];
    }
}
