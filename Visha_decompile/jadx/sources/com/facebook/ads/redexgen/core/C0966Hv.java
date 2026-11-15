package com.facebook.ads.redexgen.core;

import android.os.Parcel;

public final class C0966Hv {
    public final int A00;
    public final long A01;
    public final long A02;

    public C0966Hv(int i, long j, long j2) {
        this.A00 = i;
        this.A02 = j;
        this.A01 = j2;
    }

    public C0966Hv(int i, long j, long j2, C0965Hu c0965Hu) {
        this(i, j, j2);
    }

    public static C0966Hv A00(Parcel parcel) {
        return new C0966Hv(parcel.readInt(), parcel.readLong(), parcel.readLong());
    }

    public final void A01(Parcel parcel) {
        parcel.writeInt(this.A00);
        parcel.writeLong(this.A02);
        parcel.writeLong(this.A01);
    }
}
