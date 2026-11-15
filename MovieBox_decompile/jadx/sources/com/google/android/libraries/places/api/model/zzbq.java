package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;

final class zzbq extends zzac {
    public static final Parcelable.Creator<zzbq> CREATOR = new zzbp();

    zzbq(LatLng latLng, LatLng latLng2) {
        super(latLng, latLng2);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(getSouthwest(), i10);
        parcel.writeParcelable(getNortheast(), i10);
    }
}
