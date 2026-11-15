package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzbv implements Parcelable.Creator {
    zzbv() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzbw((LocalDate) parcel.readParcelable(TimeOfWeek.class.getClassLoader()), (DayOfWeek) parcel.readParcelable(TimeOfWeek.class.getClassLoader()), (LocalTime) parcel.readParcelable(TimeOfWeek.class.getClassLoader()), parcel.readInt() == 1);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzbw[i10];
    }
}
