package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzba extends zzn {
    public static final Parcelable.Creator<zzba> CREATOR = new zzaz();

    zzba(int i10, int i11, int i12) {
        super(i10, i11, i12);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(getYear());
        parcel.writeInt(getMonth());
        parcel.writeInt(getDay());
    }
}
