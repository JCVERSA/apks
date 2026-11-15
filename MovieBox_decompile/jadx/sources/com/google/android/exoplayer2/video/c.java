package com.google.android.exoplayer2.video;

import android.os.Bundle;
import java.util.Arrays;

public final class c implements com.google.android.exoplayer2.k {

    public static final com.google.android.exoplayer2.k.a f26956f = new com.google.android.exoplayer2.k.a() {
        @Override
        public final com.google.android.exoplayer2.k a(Bundle bundle) {
            return c.e(bundle);
        }
    };

    public final int f26957a;

    public final int f26958b;

    public final int f26959c;

    public final byte[] f26960d;

    private int f26961e;

    public c(int i10, int i11, int i12, byte[] bArr) {
        this.f26957a = i10;
        this.f26958b = i11;
        this.f26959c = i12;
        this.f26960d = bArr;
    }

    public static int b(int i10) {
        if (i10 == 1) {
            return 1;
        }
        if (i10 != 9) {
            return (i10 == 4 || i10 == 5 || i10 == 6 || i10 == 7) ? 2 : -1;
        }
        return 6;
    }

    public static int c(int i10) {
        if (i10 == 1) {
            return 3;
        }
        if (i10 == 16) {
            return 6;
        }
        if (i10 != 18) {
            return (i10 == 6 || i10 == 7) ? 3 : -1;
        }
        return 7;
    }

    private static String d(int i10) {
        return Integer.toString(i10, 36);
    }

    public static c e(Bundle bundle) {
        return new c(bundle.getInt(d(0), -1), bundle.getInt(d(1), -1), bundle.getInt(d(2), -1), bundle.getByteArray(d(3)));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f26957a == cVar.f26957a && this.f26958b == cVar.f26958b && this.f26959c == cVar.f26959c && Arrays.equals(this.f26960d, cVar.f26960d);
    }

    public int hashCode() {
        if (this.f26961e == 0) {
            this.f26961e = ((((((527 + this.f26957a) * 31) + this.f26958b) * 31) + this.f26959c) * 31) + Arrays.hashCode(this.f26960d);
        }
        return this.f26961e;
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(d(0), this.f26957a);
        bundle.putInt(d(1), this.f26958b);
        bundle.putInt(d(2), this.f26959c);
        bundle.putByteArray(d(3), this.f26960d);
        return bundle;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("ColorInfo(");
        sb2.append(this.f26957a);
        sb2.append(", ");
        sb2.append(this.f26958b);
        sb2.append(", ");
        sb2.append(this.f26959c);
        sb2.append(", ");
        sb2.append(this.f26960d != null);
        sb2.append(")");
        return sb2.toString();
    }
}
