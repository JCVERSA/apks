package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Arrays;

public final class ru0 implements k01.b {
    public static final Parcelable.Creator<ru0> CREATOR = new a();
    public final String b;
    public final byte[] c;
    public final int d;
    public final int e;

    public class a implements Parcelable.Creator<ru0> {
        @Override
        public final ru0 createFromParcel(Parcel parcel) {
            return new ru0(parcel);
        }

        @Override
        public final ru0[] newArray(int i) {
            return new ru0[i];
        }
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ru0.class != obj.getClass()) {
            return false;
        }
        ru0 ru0Var = (ru0) obj;
        return this.b.equals(ru0Var.b) && Arrays.equals(this.c, ru0Var.c) && this.d == ru0Var.d && this.e == ru0Var.e;
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.c) + v3.a(this.b, 527, 31)) * 31) + this.d) * 31) + this.e;
    }

    public final String toString() {
        return "mdta: key=" + this.b;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.b);
        parcel.writeByteArray(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
    }

    public ru0(int i, int i2, String str, byte[] bArr) {
        this.b = str;
        this.c = bArr;
        this.d = i;
        this.e = i2;
    }

    private ru0(Parcel parcel) {
        this.b = (String) f92.a(parcel.readString());
        this.c = (byte[]) f92.a(parcel.createByteArray());
        this.d = parcel.readInt();
        this.e = parcel.readInt();
    }
}
