package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzat implements Parcelable.Creator {
    zzat() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzau(parcel.readInt(), parcel.readInt());
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzau[i10];
    }
}
