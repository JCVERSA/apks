package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzbf implements Parcelable.Creator {
    zzbf() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzbg((TimeOfWeek) parcel.readParcelable(Period.class.getClassLoader()), (TimeOfWeek) parcel.readParcelable(Period.class.getClassLoader()));
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzbg[i10];
    }
}
