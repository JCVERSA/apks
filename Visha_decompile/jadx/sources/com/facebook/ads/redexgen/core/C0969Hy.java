package com.facebook.ads.redexgen.core;

import android.os.Parcel;

public final class C0969Hy {
    public final int A00;
    public final long A01;

    public C0969Hy(int i, long j) {
        this.A00 = i;
        this.A01 = j;
    }

    public C0969Hy(int i, long j, C0968Hx c0968Hx) {
        this(i, j);
    }

    public static C0969Hy A00(Parcel parcel) {
        return new C0969Hy(parcel.readInt(), parcel.readLong());
    }

    public void A02(Parcel parcel) {
        parcel.writeInt(this.A00);
        parcel.writeLong(this.A01);
    }
}
