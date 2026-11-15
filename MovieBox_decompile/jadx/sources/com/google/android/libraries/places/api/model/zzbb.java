package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzbb implements Parcelable.Creator {
    zzbb() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzbc(parcel.readInt(), parcel.readInt());
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzbc[i10];
    }
}
