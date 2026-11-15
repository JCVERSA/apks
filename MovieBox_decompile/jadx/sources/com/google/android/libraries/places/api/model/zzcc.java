package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzcc implements Parcelable.Creator {
    zzcc() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        String string = parcel.readString();
        string.getClass();
        return OpeningHours.HoursType.valueOf(string);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new OpeningHours.HoursType[i10];
    }
}
