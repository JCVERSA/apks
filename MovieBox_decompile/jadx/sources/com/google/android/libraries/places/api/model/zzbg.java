package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

final class zzbg extends zzt {
    public static final Parcelable.Creator<zzbg> CREATOR = new zzbf();

    zzbg(@Nullable TimeOfWeek timeOfWeek, @Nullable TimeOfWeek timeOfWeek2) {
        super(timeOfWeek, timeOfWeek2);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(getOpen(), i10);
        parcel.writeParcelable(getClose(), i10);
    }
}
