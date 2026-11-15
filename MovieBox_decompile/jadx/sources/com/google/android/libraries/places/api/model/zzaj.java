package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzaj implements Parcelable.Creator {
    zzaj() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzak(parcel.readString(), parcel.readInt() == 0 ? parcel.readString() : null, parcel.readArrayList(AddressComponent.class.getClassLoader()));
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzak[i10];
    }
}
