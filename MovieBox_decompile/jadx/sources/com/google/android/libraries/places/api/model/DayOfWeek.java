package com.google.android.libraries.places.api.model;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RecentlyNonNull;

public enum DayOfWeek implements Parcelable {
    SUNDAY,
    MONDAY,
    TUESDAY,
    WEDNESDAY,
    THURSDAY,
    FRIDAY,
    SATURDAY;


    @RecentlyNonNull
    public static final Parcelable.Creator<DayOfWeek> CREATOR = new Parcelable.Creator() {
        @Override
        public final Object createFromParcel(Parcel parcel) {
            DayOfWeek dayOfWeek = DayOfWeek.SUNDAY;
            String string = parcel.readString();
            string.getClass();
            return DayOfWeek.valueOf(string);
        }

        @Override
        public final Object[] newArray(int i10) {
            return new DayOfWeek[i10];
        }
    };

    @Override
    public int describeContents() {
        return 0;
    }

    @Override
    public void writeToParcel(@RecentlyNonNull Parcel parcel, int i10) {
        parcel.writeString(name());
    }
}
