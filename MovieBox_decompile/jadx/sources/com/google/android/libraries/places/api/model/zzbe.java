package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.List;

final class zzbe extends zzr {
    public static final Parcelable.Creator<zzbe> CREATOR = new zzbd();

    zzbe(@Nullable OpeningHours.HoursType hoursType, List list, List list2, List list3) {
        super(hoursType, list, list2, list3);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(getHoursType(), i10);
        parcel.writeList(getPeriods());
        parcel.writeList(getSpecialDays());
        parcel.writeList(getWeekdayText());
    }
}
