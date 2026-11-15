package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;

final class zzbp implements Parcelable.Creator {
    zzbp() {
    }

    @Override
    public final Object createFromParcel(Parcel parcel) {
        return new zzbq((LatLng) parcel.readParcelable(RectangularBounds.class.getClassLoader()), (LatLng) parcel.readParcelable(RectangularBounds.class.getClassLoader()));
    }

    @Override
    public final Object[] newArray(int i10) {
        return new zzbq[i10];
    }
}
