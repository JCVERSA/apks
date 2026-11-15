package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;

public final class gl1 extends r12 {
    public static final Parcelable.Creator<gl1> CREATOR = new a();
    public final long b;
    public final long c;
    public final byte[] d;

    public class a implements Parcelable.Creator<gl1> {
        @Override
        public final gl1 createFromParcel(Parcel parcel) {
            return new gl1(parcel);
        }

        @Override
        public final gl1[] newArray(int i) {
            return new gl1[i];
        }
    }

    public static gl1 a(ag1 ag1Var, int i, long j) {
        long jV = ag1Var.v();
        int i2 = i - 4;
        byte[] bArr = new byte[i2];
        ag1Var.a(bArr, 0, i2);
        return new gl1(jV, bArr, j);
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.b);
        parcel.writeLong(this.c);
        parcel.writeByteArray(this.d);
    }

    private gl1(long j, byte[] bArr, long j2) {
        this.b = j2;
        this.c = j;
        this.d = bArr;
    }

    private gl1(Parcel parcel) {
        this.b = parcel.readLong();
        this.c = parcel.readLong();
        this.d = (byte[]) f92.a(parcel.createByteArray());
    }
}
