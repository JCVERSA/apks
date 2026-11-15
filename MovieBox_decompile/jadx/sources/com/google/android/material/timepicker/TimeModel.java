package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.R$string;
import java.util.Arrays;

class TimeModel implements Parcelable {
    public static final Parcelable.Creator<TimeModel> CREATOR = new a();
    public static final String NUMBER_FORMAT = "%d";
    public static final String ZERO_LEADING_NUMBER_FORMAT = "%02d";

    final int f29271a;

    int f29272b;

    int f29273c;

    int f29274d;

    int f29275e;
    private final e hourInputValidator;
    private final e minuteInputValidator;

    class a implements Parcelable.Creator {
        a() {
        }

        @Override
        public TimeModel createFromParcel(Parcel parcel) {
            return new TimeModel(parcel);
        }

        @Override
        public TimeModel[] newArray(int i10) {
            return new TimeModel[i10];
        }
    }

    public TimeModel() {
        this(0);
    }

    public static String a(Resources resources, CharSequence charSequence) {
        return b(resources, charSequence, ZERO_LEADING_NUMBER_FORMAT);
    }

    public static String b(Resources resources, CharSequence charSequence, String str) {
        try {
            return String.format(resources.getConfiguration().locale, str, Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    private static int g(int i10) {
        return i10 >= 12 ? 1 : 0;
    }

    public int c() {
        return this.f29271a == 1 ? R$string.material_hour_24h_suffix : R$string.material_hour_suffix;
    }

    public int d() {
        if (this.f29271a == 1) {
            return this.f29272b % 24;
        }
        int i10 = this.f29272b;
        if (i10 % 12 == 0) {
            return 12;
        }
        return this.f29275e == 1 ? i10 - 12 : i10;
    }

    @Override
    public int describeContents() {
        return 0;
    }

    public e e() {
        return this.hourInputValidator;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimeModel)) {
            return false;
        }
        TimeModel timeModel = (TimeModel) obj;
        return this.f29272b == timeModel.f29272b && this.f29273c == timeModel.f29273c && this.f29271a == timeModel.f29271a && this.f29274d == timeModel.f29274d;
    }

    public e f() {
        return this.minuteInputValidator;
    }

    public void h(int i10) {
        if (this.f29271a == 1) {
            this.f29272b = i10;
        } else {
            this.f29272b = (i10 % 12) + (this.f29275e != 1 ? 0 : 12);
        }
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f29271a), Integer.valueOf(this.f29272b), Integer.valueOf(this.f29273c), Integer.valueOf(this.f29274d)});
    }

    public void i(int i10) {
        this.f29273c = i10 % 60;
    }

    public void j(int i10) {
        if (i10 != this.f29275e) {
            this.f29275e = i10;
            int i11 = this.f29272b;
            if (i11 < 12 && i10 == 1) {
                this.f29272b = i11 + 12;
            } else {
                if (i11 < 12 || i10 != 0) {
                    return;
                }
                this.f29272b = i11 - 12;
            }
        }
    }

    @Override
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f29272b);
        parcel.writeInt(this.f29273c);
        parcel.writeInt(this.f29274d);
        parcel.writeInt(this.f29271a);
    }

    public TimeModel(int i10) {
        this(0, 0, 10, i10);
    }

    public TimeModel(int i10, int i11, int i12, int i13) {
        this.f29272b = i10;
        this.f29273c = i11;
        this.f29274d = i12;
        this.f29271a = i13;
        this.f29275e = g(i10);
        this.minuteInputValidator = new e(59);
        this.hourInputValidator = new e(i13 == 1 ? 23 : 12);
    }

    protected TimeModel(Parcel parcel) {
        this(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
    }
}
