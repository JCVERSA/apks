package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.alibaba.android.arouter.utils.Consts;

public final class w22 implements Comparable<w22>, Parcelable {
    public static final Parcelable.Creator<w22> CREATOR = new a();
    public final int b;
    public final int c;
    public final int d;

    public class a implements Parcelable.Creator<w22> {
        @Override
        public final w22 createFromParcel(Parcel parcel) {
            return new w22(parcel);
        }

        @Override
        public final w22[] newArray(int i) {
            return new w22[i];
        }
    }

    public w22(int i, int i2, int i3) {
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    @Override
    public final int compareTo(w22 w22Var) {
        w22 w22Var2 = w22Var;
        int i = this.b - w22Var2.b;
        if (i != 0) {
            return i;
        }
        int i2 = this.c - w22Var2.c;
        return i2 == 0 ? this.d - w22Var2.d : i2;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || w22.class != obj.getClass()) {
            return false;
        }
        w22 w22Var = (w22) obj;
        return this.b == w22Var.b && this.c == w22Var.c && this.d == w22Var.d;
    }

    public final int hashCode() {
        return (((this.b * 31) + this.c) * 31) + this.d;
    }

    public final String toString() {
        return this.b + Consts.DOT + this.c + Consts.DOT + this.d;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
    }

    public w22(Parcel parcel) {
        this.b = parcel.readInt();
        this.c = parcel.readInt();
        this.d = parcel.readInt();
    }
}
