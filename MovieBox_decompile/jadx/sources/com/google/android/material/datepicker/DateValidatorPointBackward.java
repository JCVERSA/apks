package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.Arrays;

public class DateValidatorPointBackward implements CalendarConstraints.DateValidator {
    public static final Parcelable.Creator<DateValidatorPointBackward> CREATOR = new a();
    private final long point;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public DateValidatorPointBackward createFromParcel(Parcel parcel) {
            return new DateValidatorPointBackward(parcel.readLong(), null);
        }

        @Override
        public DateValidatorPointBackward[] newArray(int i10) {
            return new DateValidatorPointBackward[i10];
        }
    }

    DateValidatorPointBackward(long j10, a aVar) {
        this(j10);
    }

    @NonNull
    public static DateValidatorPointBackward before(long j10) {
        return new DateValidatorPointBackward(j10);
    }

    @NonNull
    public static DateValidatorPointBackward now() {
        return before(x.q().getTimeInMillis());
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof DateValidatorPointBackward) && this.point == ((DateValidatorPointBackward) obj).point;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.point)});
    }

    @Override
    public boolean isValid(long j10) {
        return j10 <= this.point;
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeLong(this.point);
    }

    private DateValidatorPointBackward(long j10) {
        this.point = j10;
    }
}
