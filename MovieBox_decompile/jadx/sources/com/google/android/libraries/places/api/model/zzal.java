package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzal implements Parcelable.Creator {
    zzal() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzam(parcel.readArrayList(AddressComponents.class.getClassLoader()));
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzam[i10];
    }
}
