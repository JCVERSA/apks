package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class CompositeDateValidator implements CalendarConstraints.DateValidator {
    private static final int COMPARATOR_ALL_ID = 2;
    private static final int COMPARATOR_ANY_ID = 1;

    @NonNull
    private final d operator;

    @NonNull
    private final List<CalendarConstraints.DateValidator> validators;
    private static final d ANY_OPERATOR = new a();
    private static final d ALL_OPERATOR = new b();
    public static final Parcelable.Creator<CompositeDateValidator> CREATOR = new c();

    class a implements d {
        a() {
        }

        @Override
        public boolean a(List list, long j10) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                CalendarConstraints.DateValidator dateValidator = (CalendarConstraints.DateValidator) it.next();
                if (dateValidator != null && dateValidator.isValid(j10)) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public int getId() {
            return 1;
        }
    }

    class b implements d {
        b() {
        }

        @Override
        public boolean a(List list, long j10) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                CalendarConstraints.DateValidator dateValidator = (CalendarConstraints.DateValidator) it.next();
                if (dateValidator != null && !dateValidator.isValid(j10)) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public int getId() {
            return 2;
        }
    }

    class c implements Parcelable.Creator {
        c() {
        }

        @Override
        public CompositeDateValidator createFromParcel(Parcel parcel) {
            ArrayList arrayList = parcel.readArrayList(CalendarConstraints.DateValidator.class.getClassLoader());
            int i10 = parcel.readInt();
            d dVar = (i10 != 2 && i10 == 1) ? CompositeDateValidator.ANY_OPERATOR : CompositeDateValidator.ALL_OPERATOR;
            return new CompositeDateValidator((List) androidx.core.util.i.g(arrayList), dVar, null);
        }

        @Override
        public CompositeDateValidator[] newArray(int i10) {
            return new CompositeDateValidator[i10];
        }
    }

    private interface d {
        boolean a(List list, long j10);

        int getId();
    }

    CompositeDateValidator(List list, d dVar, a aVar) {
        this(list, dVar);
    }

    @NonNull
    public static CalendarConstraints.DateValidator allOf(@NonNull List<CalendarConstraints.DateValidator> list) {
        return new CompositeDateValidator(list, ALL_OPERATOR);
    }

    @NonNull
    public static CalendarConstraints.DateValidator anyOf(@NonNull List<CalendarConstraints.DateValidator> list) {
        return new CompositeDateValidator(list, ANY_OPERATOR);
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CompositeDateValidator)) {
            return false;
        }
        CompositeDateValidator compositeDateValidator = (CompositeDateValidator) obj;
        return this.validators.equals(compositeDateValidator.validators) && this.operator.getId() == compositeDateValidator.operator.getId();
    }

    public int hashCode() {
        return this.validators.hashCode();
    }

    @Override
    public boolean isValid(long j10) {
        return this.operator.a(this.validators, j10);
    }

    @Override
    public void writeToParcel(@NonNull Parcel parcel, int i10) {
        parcel.writeList(this.validators);
        parcel.writeInt(this.operator.getId());
    }

    private CompositeDateValidator(@NonNull List<CalendarConstraints.DateValidator> list, d dVar) {
        this.validators = list;
        this.operator = dVar;
    }
}
