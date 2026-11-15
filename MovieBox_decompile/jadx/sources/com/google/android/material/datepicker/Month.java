package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

final class Month implements Comparable<Month>, Parcelable {
    public static final Parcelable.Creator<Month> CREATOR = new a();

    final int f28017a;

    final int f28018b;

    final int f28019c;

    final int f28020d;

    final long f28021e;

    @NonNull
    private final Calendar firstOfMonth;

    @Nullable
    private String longName;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public Month createFromParcel(Parcel parcel) {
            return Month.b(parcel.readInt(), parcel.readInt());
        }

        @Override
        public Month[] newArray(int i10) {
            return new Month[i10];
        }
    }

    private Month(Calendar calendar) {
        calendar.set(5, 1);
        Calendar calendarF = x.f(calendar);
        this.firstOfMonth = calendarF;
        this.f28017a = calendarF.get(2);
        this.f28018b = calendarF.get(1);
        this.f28019c = calendarF.getMaximum(7);
        this.f28020d = calendarF.getActualMaximum(5);
        this.f28021e = calendarF.getTimeInMillis();
    }

    static Month b(int i10, int i11) {
        Calendar calendarS = x.s();
        calendarS.set(1, i10);
        calendarS.set(2, i11);
        return new Month(calendarS);
    }

    static Month d(long j10) {
        Calendar calendarS = x.s();
        calendarS.setTimeInMillis(j10);
        return new Month(calendarS);
    }

    static Month e() {
        return new Month(x.q());
    }

    @Override
    public int compareTo(Month month) {
        return this.firstOfMonth.compareTo(month.firstOfMonth);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Month)) {
            return false;
        }
        Month month = (Month) obj;
        return this.f28017a == month.f28017a && this.f28018b == month.f28018b;
    }

    int f(int i10) {
        int i11 = this.firstOfMonth.get(7);
        if (i10 <= 0) {
            i10 = this.firstOfMonth.getFirstDayOfWeek();
        }
        int i12 = i11 - i10;
        return i12 < 0 ? i12 + this.f28019c : i12;
    }

    long g(int i10) {
        Calendar calendarF = x.f(this.firstOfMonth);
        calendarF.set(5, i10);
        return calendarF.getTimeInMillis();
    }

    int h(long j10) {
        Calendar calendarF = x.f(this.firstOfMonth);
        calendarF.setTimeInMillis(j10);
        return calendarF.get(5);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f28017a), Integer.valueOf(this.f28018b)});
    }

    String i() {
        if (this.longName == null) {
            this.longName = j.l(this.firstOfMonth.getTimeInMillis());
        }
        return this.longName;
    }

    long j() {
        return this.firstOfMonth.getTimeInMillis();
    }

    Month k(int i10) {
        Calendar calendarF = x.f(this.firstOfMonth);
        calendarF.add(2, i10);
        return new Month(calendarF);
    }

    int l(Month month) {
        if (this.firstOfMonth instanceof GregorianCalendar) {
            return ((month.f28018b - this.f28018b) * 12) + (month.f28017a - this.f28017a);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f28018b);
        parcel.writeInt(this.f28017a);
    }
}
