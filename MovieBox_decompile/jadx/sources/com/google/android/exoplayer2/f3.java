package com.google.android.exoplayer2;

import android.os.Bundle;

public final class f3 extends w2 {

    public static final k.a f24444d = new k.a() {
        @Override
        public final k a(Bundle bundle) {
            return f3.e(bundle);
        }
    };

    private final int f24445b;

    private final float f24446c;

    public f3(int i10) {
        com.google.android.exoplayer2.util.a.b(i10 > 0, "maxStars must be a positive integer");
        this.f24445b = i10;
        this.f24446c = -1.0f;
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    public static f3 e(Bundle bundle) {
        com.google.android.exoplayer2.util.a.a(bundle.getInt(c(0), -1) == 2);
        int i10 = bundle.getInt(c(1), 5);
        float f10 = bundle.getFloat(c(2), -1.0f);
        return f10 == -1.0f ? new f3(i10) : new f3(i10, f10);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof f3)) {
            return false;
        }
        f3 f3Var = (f3) obj;
        return this.f24445b == f3Var.f24445b && this.f24446c == f3Var.f24446c;
    }

    public int hashCode() {
        return com.google.common.base.j.b(Integer.valueOf(this.f24445b), Float.valueOf(this.f24446c));
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), 2);
        bundle.putInt(c(1), this.f24445b);
        bundle.putFloat(c(2), this.f24446c);
        return bundle;
    }

    public f3(int i10, float f10) {
        boolean z10 = false;
        com.google.android.exoplayer2.util.a.b(i10 > 0, "maxStars must be a positive integer");
        if (f10 >= 0.0f && f10 <= i10) {
            z10 = true;
        }
        com.google.android.exoplayer2.util.a.b(z10, "starRating is out of range [0, maxStars]");
        this.f24445b = i10;
        this.f24446c = f10;
    }
}
