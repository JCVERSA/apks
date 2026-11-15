package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

public final class r82 extends ti0 {
    public static final Parcelable.Creator<r82> CREATOR = new a();

    @Nullable
    public final String c;
    public final String d;

    public class a implements Parcelable.Creator<r82> {
        @Override
        public final r82 createFromParcel(Parcel parcel) {
            return new r82(parcel);
        }

        @Override
        public final r82[] newArray(int i) {
            return new r82[i];
        }
    }

    public r82(Parcel parcel) {
        super((String) f92.a(parcel.readString()));
        this.c = parcel.readString();
        this.d = (String) f92.a(parcel.readString());
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || r82.class != obj.getClass()) {
            return false;
        }
        r82 r82Var = (r82) obj;
        return this.b.equals(r82Var.b) && f92.a(this.c, r82Var.c) && f92.a(this.d, r82Var.d);
    }

    public final int hashCode() {
        int iA = v3.a(this.b, 527, 31);
        String str = this.c;
        int iHashCode = (iA + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.d;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override
    public final String toString() {
        return this.b + ": url=" + this.d;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
    }

    public r82(String str, @Nullable String str2, String str3) {
        super(str);
        this.c = str2;
        this.d = str3;
    }
}
