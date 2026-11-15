package com.yandex.mobile.ads.impl;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import java.util.Arrays;

public final class y50 implements k01.b {
    public final String b;
    public final String c;
    public final long d;
    public final long e;
    public final byte[] f;
    private int g;
    private static final jc0 h = new jc0.a().e(MimeTypes.APPLICATION_ID3).a();
    private static final jc0 i = new jc0.a().e(MimeTypes.APPLICATION_SCTE35).a();
    public static final Parcelable.Creator<y50> CREATOR = new a();

    public class a implements Parcelable.Creator<y50> {
        @Override
        public final y50 createFromParcel(Parcel parcel) {
            return new y50(parcel);
        }

        @Override
        public final y50[] newArray(int i) {
            return new y50[i];
        }
    }

    public y50(Parcel parcel) {
        this.b = (String) f92.a(parcel.readString());
        this.c = (String) f92.a(parcel.readString());
        this.d = parcel.readLong();
        this.e = parcel.readLong();
        this.f = (byte[]) f92.a(parcel.createByteArray());
    }

    @Override
    @Nullable
    public final jc0 a() {
        String str = this.b;
        str.getClass();
        switch (str) {
            case "urn:scte:scte35:2014:bin":
                return i;
            case "https://aomedia.org/emsg/ID3":
            case "https://developer.apple.com/streaming/emsg-id3":
                return h;
            default:
                return null;
        }
    }

    @Override
    @Nullable
    public final byte[] b() {
        if (a() != null) {
            return this.f;
        }
        return null;
    }

    @Override
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || y50.class != obj.getClass()) {
            return false;
        }
        y50 y50Var = (y50) obj;
        return this.d == y50Var.d && this.e == y50Var.e && f92.a(this.b, y50Var.b) && f92.a(this.c, y50Var.c) && Arrays.equals(this.f, y50Var.f);
    }

    public final int hashCode() {
        if (this.g == 0) {
            String str = this.b;
            int iHashCode = ((str != null ? str.hashCode() : 0) + 527) * 31;
            String str2 = this.c;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            long j = this.d;
            int i2 = (iHashCode2 + ((int) (j ^ (j >>> 32)))) * 31;
            long j2 = this.e;
            this.g = Arrays.hashCode(this.f) + ((i2 + ((int) (j2 ^ (j2 >>> 32)))) * 31);
        }
        return this.g;
    }

    public final String toString() {
        return "EMSG: scheme=" + this.b + ", id=" + this.e + ", durationMs=" + this.d + ", value=" + this.c;
    }

    @Override
    public final void writeToParcel(Parcel parcel, int i2) {
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeLong(this.d);
        parcel.writeLong(this.e);
        parcel.writeByteArray(this.f);
    }

    public y50(String str, String str2, long j, long j2, byte[] bArr) {
        this.b = str;
        this.c = str2;
        this.d = j;
        this.e = j2;
        this.f = bArr;
    }
}
