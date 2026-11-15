package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzan implements Parcelable.Creator {
    zzan() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzao(parcel.readString(), parcel.readInt() == 0 ? parcel.readString() : null, parcel.readInt() == 0 ? parcel.readString() : null);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzao[i10];
    }
}
