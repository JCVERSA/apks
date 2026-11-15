package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.Parcelable;

final class zzaw extends zzk {
    public static final Parcelable.Creator<zzaw> CREATOR = new zzav();

    zzaw(ParcelUuid parcelUuid) {
        super(parcelUuid);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(zza(), i10);
    }
}
