package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import java.util.Arrays;

public final class y01 extends ti0 {
    public static final Parcelable.Creator<y01> CREATOR = new a();
    public final int c;
    public final int d;
    public final int e;
    public final int[] f;
    public final int[] g;

    public class a implements Parcelable.Creator<y01> {
        @Override
        public final y01 createFromParcel(Parcel parcel) {
            return new y01(parcel);
        }

        @Override
        public final y01[] newArray(int i) {
            return new y01[i];
        }
    }

    public y01(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.c = i;
        this.d = i2;
        this.e = i3;
        this.f = iArr;
        this.g = iArr2;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || y01.class != obj.getClass()) {
            return false;
        }
        y01 y01Var = (y01) obj;
        return this.c == y01Var.c && this.d == y01Var.d && this.e == y01Var.e && Arrays.equals(this.f, y01Var.f) && Arrays.equals(this.g, y01Var.g);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.g) + ((Arrays.hashCode(this.f) + ((((((this.c + 527) * 31) + this.d) * 31) + this.e) * 31)) * 31);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.c);
        parcel.writeInt(this.d);
        parcel.writeInt(this.e);
        parcel.writeIntArray(this.f);
        parcel.writeIntArray(this.g);
    }

    public y01(Parcel parcel) {
        super("MLLT");
        this.c = parcel.readInt();
        this.d = parcel.readInt();
        this.e = parcel.readInt();
        this.f = (int[]) f92.a(parcel.createIntArray());
        this.g = (int[]) f92.a(parcel.createIntArray());
    }
}
