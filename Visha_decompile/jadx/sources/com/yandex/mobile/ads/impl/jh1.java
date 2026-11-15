package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Arrays;

public final class jh1 implements k01.b {
    public static final Parcelable.Creator<jh1> CREATOR = new a();
    public final int b;
    public final String c;
    public final String d;
    public final int e;
    public final int f;
    public final int g;
    public final int h;
    public final byte[] i;

    public class a implements Parcelable.Creator<jh1> {
        @Override
        public final jh1 createFromParcel(Parcel parcel) {
            return new jh1(parcel);
        }

        @Override
        public final jh1[] newArray(int i) {
            return new jh1[i];
        }
    }

    public jh1(int i, String str, String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.b = i;
        this.c = str;
        this.d = str2;
        this.e = i2;
        this.f = i3;
        this.g = i4;
        this.h = i5;
        this.i = bArr;
    }

    @Override
    public final void a(mw0.a aVar) {
        aVar.a(this.b, this.i);
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || jh1.class != obj.getClass()) {
            return false;
        }
        jh1 jh1Var = (jh1) obj;
        return this.b == jh1Var.b && this.c.equals(jh1Var.c) && this.d.equals(jh1Var.d) && this.e == jh1Var.e && this.f == jh1Var.f && this.g == jh1Var.g && this.h == jh1Var.h && Arrays.equals(this.i, jh1Var.i);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.i) + ((((((((v3.a(this.d, v3.a(this.c, (this.b + 527) * 31, 31), 31) + this.e) * 31) + this.f) * 31) + this.g) * 31) + this.h) * 31);
    }

    public final String toString() {
        return "Picture: mimeType=" + this.c + ", description=" + this.d;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.b);
        parcel.writeString(this.c);
        parcel.writeString(this.d);
        parcel.writeInt(this.e);
        parcel.writeInt(this.f);
        parcel.writeInt(this.g);
        parcel.writeInt(this.h);
        parcel.writeByteArray(this.i);
    }

    public jh1(Parcel parcel) {
        this.b = parcel.readInt();
        this.c = (String) f92.a(parcel.readString());
        this.d = (String) f92.a(parcel.readString());
        this.e = parcel.readInt();
        this.f = parcel.readInt();
        this.g = parcel.readInt();
        this.h = parcel.readInt();
        this.i = (byte[]) f92.a(parcel.createByteArray());
    }
}
