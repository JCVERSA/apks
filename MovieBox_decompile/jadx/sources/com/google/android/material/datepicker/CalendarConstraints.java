package com.google.android.material.datepicker;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Objects;

public final class CalendarConstraints implements Parcelable {
    public static final Parcelable.Creator<CalendarConstraints> CREATOR = new a();

    @NonNull
    private final Month end;
    private final int firstDayOfWeek;
    private final int monthSpan;

    @Nullable
    private Month openAt;

    @NonNull
    private final Month start;

    @NonNull
    private final DateValidator validator;
    private final int yearSpan;

    public interface DateValidator extends Parcelable {
        boolean isValid(long j10);
    }

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public CalendarConstraints createFromParcel(Parcel parcel) {
            return new CalendarConstraints((Month) parcel.readParcelable(Month.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), (DateValidator) parcel.readParcelable(DateValidator.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), parcel.readInt(), null);
        }

        @Override
        public CalendarConstraints[] newArray(int i10) {
            return new CalendarConstraints[i10];
        }
    }

    CalendarConstraints(Month month, Month month2, DateValidator dateValidator, Month month3, int i10, a aVar) {
        this(month, month2, dateValidator, month3, i10);
    }

    Month clamp(Month month) {
        if (month.compareTo(this.start) < 0) {
            return this.start;
        }
        return month.compareTo(this.end) > 0 ? this.end : month;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarConstraints)) {
            return false;
        }
        CalendarConstraints calendarConstraints = (CalendarConstraints) obj;
        return this.start.equals(calendarConstraints.start) && this.end.equals(calendarConstraints.end) && androidx.core.util.d.a(this.openAt, calendarConstraints.openAt) && this.firstDayOfWeek == calendarConstraints.firstDayOfWeek && this.validator.equals(calendarConstraints.validator);
    }

    public DateValidator getDateValidator() {
        return this.validator;
    }

    @NonNull
    Month getEnd() {
        return this.end;
    }

    public long getEndMs() {
        return this.end.f28021e;
    }

    int getFirstDayOfWeek() {
        return this.firstDayOfWeek;
    }

    int getMonthSpan() {
        return this.monthSpan;
    }

    @Nullable
    Month getOpenAt() {
        return this.openAt;
    }

    @Nullable
    public Long getOpenAtMs() {
        Month month = this.openAt;
        if (month == null) {
            return null;
        }
        return Long.valueOf(month.f28021e);
    }

    @NonNull
    Month getStart() {
        return this.start;
    }

    public long getStartMs() {
        return this.start.f28021e;
    }

    int getYearSpan() {
        return this.yearSpan;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.start, this.end, this.openAt, Integer.valueOf(this.firstDayOfWeek), this.validator});
    }

    boolean isWithinBounds(long j10) {
        if (this.start.g(1) <= j10) {
            Month month = this.end;
            if (j10 <= month.g(month.f28020d)) {
                return true;
            }
        }
        return false;
    }

    void setOpenAt(@Nullable Month month) {
        this.openAt = month;
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.start, 0);
        parcel.writeParcelable(this.end, 0);
        parcel.writeParcelable(this.openAt, 0);
        parcel.writeParcelable(this.validator, 0);
        parcel.writeInt(this.firstDayOfWeek);
    }

    private CalendarConstraints(@NonNull Month month, @NonNull Month month2, @NonNull DateValidator dateValidator, @Nullable Month month3, int i10) {
        Objects.requireNonNull(month, "start cannot be null");
        Objects.requireNonNull(month2, "end cannot be null");
        Objects.requireNonNull(dateValidator, "validator cannot be null");
        this.start = month;
        this.end = month2;
        this.openAt = month3;
        this.firstDayOfWeek = i10;
        this.validator = dateValidator;
        if (month3 != null && month.compareTo(month3) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (month3 != null && month3.compareTo(month2) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        if (i10 < 0 || i10 > x.s().getMaximum(7)) {
            throw new IllegalArgumentException("firstDayOfWeek is not valid");
        }
        this.monthSpan = month.l(month2) + 1;
        this.yearSpan = (month2.f28018b - month.f28018b) + 1;
    }

    public static final class b {

        static final long f27936f = x.a(Month.b(1900, 0).f28021e);

        static final long f27937g = x.a(Month.b(2100, 11).f28021e);

        private long f27938a;

        private long f27939b;

        private Long f27940c;

        private int f27941d;

        private DateValidator f27942e;

        public b() {
            this.f27938a = f27936f;
            this.f27939b = f27937g;
            this.f27942e = DateValidatorPointForward.from(Long.MIN_VALUE);
        }

        public CalendarConstraints a() {
            Bundle bundle = new Bundle();
            bundle.putParcelable("DEEP_COPY_VALIDATOR_KEY", this.f27942e);
            Month monthD = Month.d(this.f27938a);
            Month monthD2 = Month.d(this.f27939b);
            DateValidator dateValidator = (DateValidator) bundle.getParcelable("DEEP_COPY_VALIDATOR_KEY");
            Long l10 = this.f27940c;
            return new CalendarConstraints(monthD, monthD2, dateValidator, l10 == null ? null : Month.d(l10.longValue()), this.f27941d, null);
        }

        public b b(long j10) {
            this.f27940c = Long.valueOf(j10);
            return this;
        }

        b(CalendarConstraints calendarConstraints) {
            this.f27938a = f27936f;
            this.f27939b = f27937g;
            this.f27942e = DateValidatorPointForward.from(Long.MIN_VALUE);
            this.f27938a = calendarConstraints.start.f28021e;
            this.f27939b = calendarConstraints.end.f28021e;
            this.f27940c = Long.valueOf(calendarConstraints.openAt.f28021e);
            this.f27941d = calendarConstraints.firstDayOfWeek;
            this.f27942e = calendarConstraints.validator;
        }
    }
}
