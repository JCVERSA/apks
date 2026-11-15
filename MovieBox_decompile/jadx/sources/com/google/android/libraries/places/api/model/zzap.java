package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzap implements Parcelable.Creator {
    zzap() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzaq(parcel.readArrayList(AuthorAttributions.class.getClassLoader()));
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzaq[i10];
    }
}
