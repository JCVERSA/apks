package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzbm extends zzy {
    public static final Parcelable.Creator<zzbm> CREATOR = new zzbl();

    zzbm(Place place, double d10) {
        super(place, d10);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(getPlace(), i10);
        parcel.writeDouble(getLikelihood());
    }
}
