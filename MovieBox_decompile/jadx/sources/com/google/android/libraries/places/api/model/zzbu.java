package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;

final class zzbu extends zzag {
    public static final Parcelable.Creator<zzbu> CREATOR = new zzbt();

    zzbu(LocalDate localDate, boolean z10) {
        super(localDate, z10);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(getDate(), i10);
        parcel.writeInt(isExceptional() ? 1 : 0);
    }
}
