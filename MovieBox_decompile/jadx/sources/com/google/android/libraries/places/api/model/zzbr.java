package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzbr implements Parcelable.Creator {
    zzbr() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzbs(parcel.readInt() == 0 ? parcel.readString() : null, parcel.readInt() == 0 ? parcel.readString() : null, parcel.readInt() == 0 ? parcel.readString() : null, parcel.readInt() == 0 ? parcel.readString() : null, parcel.readInt() == 0 ? parcel.readString() : null, Double.valueOf(parcel.readDouble()), (AuthorAttribution) parcel.readParcelable(Review.class.getClassLoader()), parcel.readString(), parcel.readInt() == 0 ? parcel.readString() : null);
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzbs[i10];
    }
}
