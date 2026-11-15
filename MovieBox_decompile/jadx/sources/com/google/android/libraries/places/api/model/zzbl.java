package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzbl implements Parcelable.Creator {
    zzbl() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzbm((Place) parcel.readParcelable(PlaceLikelihood.class.getClassLoader()), parcel.readDouble());
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzbm[i10];
    }
}
