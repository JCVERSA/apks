package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

public final class qp0 extends ti0 {
    public static final Parcelable.Creator<qp0> CREATOR = new a();
    public final String c;
    public final String d;
    public final String e;

    public class a implements Parcelable.Creator<qp0> {
        @Override
        public final qp0 createFromParcel(Parcel parcel) {
            return new qp0(parcel);
        }

        @Override
        public final qp0[] newArray(int i) {
            return new qp0[i];
        }
    }

    public qp0(Parcel parcel) {
        super("----");
        this.c = (String) f92.a(parcel.readString());
        this.d = (String) f92.a(parcel.readString());
        this.e = (String) f92.a(parcel.readString());
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || qp0.class != obj.getClass()) {
            return false;
        }
        qp0 qp0Var = (qp0) obj;
        return f92.a(this.d, qp0Var.d) && f92.a(this.c, qp0Var.c) && f92.a(this.e, qp0Var.e);
    }

    public final int hashCode() {
        String str = this.c;
        int iHashCode = ((str != null ? str.hashCode() : 0) + 527) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.e;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override
    public final String toString() {
        return this.b + ": domain=" + this.c + ", description=" + this.d;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.e);
    }

    public qp0(String str, String str2, String str3) {
        super("----");
        this.c = str;
        this.d = str2;
        this.e = str3;
    }
}
