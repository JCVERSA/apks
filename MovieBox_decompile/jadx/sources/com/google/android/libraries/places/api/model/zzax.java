package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;

final class zzax implements Parcelable.Creator {
    zzax() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzay((LatLng) parcel.readParcelable(CircularBounds.class.getClassLoader()), parcel.readDouble());
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzay[i10];
    }
}
