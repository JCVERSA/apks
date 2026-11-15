package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzaz implements Parcelable.Creator {
    zzaz() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzba(parcel.readInt(), parcel.readInt(), parcel.readInt());
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzba[i10];
    }
}
