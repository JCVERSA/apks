package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.Parcelable;

final class zzav implements Parcelable.Creator {
    zzav() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzaw((ParcelUuid) parcel.readParcelable(AutocompleteSessionToken.class.getClassLoader()));
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzaw[i10];
    }
}
