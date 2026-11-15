package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzar implements Parcelable.Creator {
    zzar() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzas(parcel.readString(), parcel.readInt() == 0 ? Integer.valueOf(parcel.readInt()) : null, parcel.readArrayList(AutocompletePrediction.class.getClassLoader()), parcel.readArrayList(AutocompletePrediction.class.getClassLoader()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readArrayList(AutocompletePrediction.class.getClassLoader()), parcel.readArrayList(AutocompletePrediction.class.getClassLoader()), parcel.readArrayList(AutocompletePrediction.class.getClassLoader()));
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzas[i10];
    }
}
