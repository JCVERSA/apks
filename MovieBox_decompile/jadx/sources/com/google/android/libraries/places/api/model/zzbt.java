package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzbt implements Parcelable.Creator {
    zzbt() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzbu((LocalDate) parcel.readParcelable(SpecialDay.class.getClassLoader()), parcel.readInt() == 1);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzbu[i10];
    }
}
