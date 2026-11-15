package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Arrays;

public final class je0 extends ti0 {
    public static final Parcelable.Creator<je0> CREATOR = new a();
    public final String c;
    public final String d;
    public final String e;
    public final byte[] f;

    public class a implements Parcelable.Creator<je0> {
        @Override
        public final je0 createFromParcel(Parcel parcel) {
            return new je0(parcel);
        }

        @Override
        public final je0[] newArray(int i) {
            return new je0[i];
        }
    }

    public je0(Parcel parcel) {
        super("GEOB");
        this.c = (String) f92.a(parcel.readString());
        this.d = (String) f92.a(parcel.readString());
        this.e = (String) f92.a(parcel.readString());
        this.f = (byte[]) f92.a(parcel.createByteArray());
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || je0.class != obj.getClass()) {
            return false;
        }
        je0 je0Var = (je0) obj;
        return f92.a(this.c, je0Var.c) && f92.a(this.d, je0Var.d) && f92.a(this.e, je0Var.e) && Arrays.equals(this.f, je0Var.f);
    }

    public final int hashCode() {
        String str = this.c;
        int iHashCode = ((str != null ? str.hashCode() : 0) + 527) * 31;
        String str2 = this.d;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.e;
        return Arrays.hashCode(this.f) + ((iHashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31);
    }

    @Override
    public final String toString() {
        return this.b + ": mimeType=" + this.c + ", filename=" + this.d + ", description=" + this.e;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeString(this.e);
        parcel.writeByteArray(this.f);
    }

    public je0(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.c = str;
        this.d = str2;
        this.e = str3;
        this.f = bArr;
    }
}
