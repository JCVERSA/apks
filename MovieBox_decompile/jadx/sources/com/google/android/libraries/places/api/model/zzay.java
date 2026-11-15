package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;

final class zzay extends zzl {
    public static final Parcelable.Creator<zzay> CREATOR = new zzax();

    zzay(LatLng latLng, double d10) {
        super(latLng, d10);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(getCenter(), i10);
        parcel.writeDouble(getRadius());
    }
}
