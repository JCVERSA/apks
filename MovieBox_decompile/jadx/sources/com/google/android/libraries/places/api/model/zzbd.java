package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzbd implements Parcelable.Creator {
    zzbd() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzbe((OpeningHours.HoursType) parcel.readParcelable(OpeningHours.class.getClassLoader()), parcel.readArrayList(OpeningHours.class.getClassLoader()), parcel.readArrayList(OpeningHours.class.getClassLoader()), parcel.readArrayList(OpeningHours.class.getClassLoader()));
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzbe[i10];
    }
}
