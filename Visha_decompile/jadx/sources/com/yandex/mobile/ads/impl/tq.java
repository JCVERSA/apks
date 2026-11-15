package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

public final class tq extends ti0 {
    public static final Parcelable.Creator<tq> CREATOR = new a();
    public final String c;
    public final String d;
    public final String e;

    public class a implements Parcelable.Creator<tq> {
        @Override
        public final tq createFromParcel(Parcel parcel) {
            return new tq(parcel);
        }

        @Override
        public final tq[] newArray(int i) {
            return new tq[i];
        }
    }

    public tq(Parcel parcel) {
        super("COMM");
        this.c = (String) f92.a(parcel.readString());
        this.d = (String) f92.a(parcel.readString());
        this.e = (String) f92.a(parcel.readString());
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || tq.class != obj.getClass()) {
            return false;
        }
        tq tqVar = (tq) obj;
        return f92.a(this.d, tqVar.d) && f92.a(this.c, tqVar.c) && f92.a(this.e, tqVar.e);
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
        return this.b + ": language=" + this.c + ", description=" + this.d;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.e);
    }

    public tq(String str, String str2, String str3) {
        super("COMM");
        this.c = str;
        this.d = str2;
        this.e = str3;
    }
}
