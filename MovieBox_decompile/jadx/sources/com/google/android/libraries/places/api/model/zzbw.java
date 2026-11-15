package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

final class zzbw extends zzai {
    public static final Parcelable.Creator<zzbw> CREATOR = new zzbv();

    zzbw(@Nullable LocalDate localDate, DayOfWeek dayOfWeek, LocalTime localTime, boolean z10) {
        super(localDate, dayOfWeek, localTime, z10);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(getDate(), i10);
        parcel.writeParcelable(getDay(), i10);
        parcel.writeParcelable(getTime(), i10);
        parcel.writeInt(isTruncated() ? 1 : 0);
    }
}
