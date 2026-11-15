package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzci implements Parcelable.Creator {
    zzci() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        String string = parcel.readString();
        string.getClass();
        return Place.Type.valueOf(string);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new Place.Type[i10];
    }
}
