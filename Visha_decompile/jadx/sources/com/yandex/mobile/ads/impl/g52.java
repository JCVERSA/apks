package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media3.common.C;

public final class g52 extends r12 {
    public static final Parcelable.Creator<g52> CREATOR = new a();
    public final long b;
    public final long c;

    public class a implements Parcelable.Creator<g52> {
        @Override
        public final g52 createFromParcel(Parcel parcel) {
            return new g52(parcel.readLong(), parcel.readLong());
        }

        @Override
        public final g52[] newArray(int i) {
            return new g52[i];
        }
    }

    public static g52 a(ag1 ag1Var, long j, p52 p52Var) {
        long jA = a(j, ag1Var);
        return new g52(jA, p52Var.b(jA));
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.b);
        parcel.writeLong(this.c);
    }

    private g52(long j, long j2) {
        this.b = j;
        this.c = j2;
    }

    public static long a(long j, ag1 ag1Var) {
        long jT = ag1Var.t();
        return (128 & jT) != 0 ? 8589934591L & ((((jT & 1) << 32) | ag1Var.v()) + j) : C.TIME_UNSET;
    }
}
