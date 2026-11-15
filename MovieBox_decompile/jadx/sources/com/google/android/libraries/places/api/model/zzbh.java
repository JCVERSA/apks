package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzbh implements Parcelable.Creator {
    zzbh() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzbi(parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readString(), parcel.readInt() == 0 ? parcel.readString() : null, (AuthorAttributions) parcel.readParcelable(PhotoMetadata.class.getClassLoader()));
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzbi[i10];
    }
}
