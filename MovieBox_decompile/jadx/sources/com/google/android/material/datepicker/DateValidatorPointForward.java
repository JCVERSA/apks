package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.Arrays;

public class DateValidatorPointForward implements CalendarConstraints.DateValidator {
    public static final Parcelable.Creator<DateValidatorPointForward> CREATOR = new a();
    private final long point;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public DateValidatorPointForward createFromParcel(Parcel parcel) {
            return new DateValidatorPointForward(parcel.readLong(), null);
        }

        @Override
        public DateValidatorPointForward[] newArray(int i10) {
            return new DateValidatorPointForward[i10];
        }
    }

    DateValidatorPointForward(long j10, a aVar) {
        this(j10);
    }

    @NonNull
    public static DateValidatorPointForward from(long j10) {
        return new DateValidatorPointForward(j10);
    }

    @NonNull
    public static DateValidatorPointForward now() {
        return from(x.q().getTimeInMillis());
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DateValidatorPointForward) && this.point == ((DateValidatorPointForward) obj).point;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.point)});
    }

    @Override
    public boolean isValid(long j10) {
        return j10 >= this.point;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeLong(this.point);
    }

    private DateValidatorPointForward(long j10) {
        this.point = j10;
    }
}
