package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzau extends zzj {
    public static final Parcelable.Creator<zzau> CREATOR = new zzat();

    zzau(int i10, int i11) {
        super(i10, i11);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(zzb());
        parcel.writeInt(zza());
    }
}
