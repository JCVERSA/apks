package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;

public final class z11 implements k01.b {
    public static final Parcelable.Creator<z11> CREATOR = new a();
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;

    public class a implements Parcelable.Creator<z11> {
        @Override
        public final z11 createFromParcel(Parcel parcel) {
            return new z11(parcel);
        }

        @Override
        public final z11[] newArray(int i) {
            return new z11[i];
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
        if (obj == null || z11.class != obj.getClass()) {
            return false;
        }
        z11 z11Var = (z11) obj;
        return this.b == z11Var.b && this.c == z11Var.c && this.d == z11Var.d && this.e == z11Var.e && this.f == z11Var.f;
    }

    public final int hashCode() {
        long j = this.b;
        long j2 = this.c;
        int i = (((((int) (j ^ (j >>> 32))) + 527) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31;
        long j3 = this.d;
        int i2 = (i + ((int) (j3 ^ (j3 >>> 32)))) * 31;
        long j4 = this.e;
        int i3 = (i2 + ((int) (j4 ^ (j4 >>> 32)))) * 31;
        long j5 = this.f;
        return i3 + ((int) ((j5 >>> 32) ^ j5));
    }

    public final String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.b + ", photoSize=" + this.c + ", photoPresentationTimestampUs=" + this.d + ", videoStartPosition=" + this.e + ", videoSize=" + this.f;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.b);
        parcel.writeLong(this.c);
        parcel.writeLong(this.d);
        parcel.writeLong(this.e);
        parcel.writeLong(this.f);
    }

    public z11(long j, long j2, long j3, long j4, long j5) {
        this.b = j;
        this.c = j2;
        this.d = j3;
        this.e = j4;
        this.f = j5;
    }

    private z11(Parcel parcel) {
        this.b = parcel.readLong();
        this.c = parcel.readLong();
        this.d = parcel.readLong();
        this.e = parcel.readLong();
        this.f = parcel.readLong();
    }
}
