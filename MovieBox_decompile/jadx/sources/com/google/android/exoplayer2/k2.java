package com.google.android.exoplayer2;

import android.os.Bundle;

public final class k2 extends w2 {

    public static final k.a f24510c = new k.a() {
        @Override
        public final k a(Bundle bundle) {
            return k2.e(bundle);
        }
    };

    private final float f24511b;

    public k2() {
        this.f24511b = -1.0f;
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    public static k2 e(Bundle bundle) {
        com.google.android.exoplayer2.util.a.a(bundle.getInt(c(0), -1) == 1);
        float f10 = bundle.getFloat(c(1), -1.0f);
        return f10 == -1.0f ? new k2() : new k2(f10);
    }

    public boolean equals(Object obj) {
        return (obj instanceof k2) && this.f24511b == ((k2) obj).f24511b;
    }

    public int hashCode() {
        return com.google.common.base.j.b(Float.valueOf(this.f24511b));
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), 1);
        bundle.putFloat(c(1), this.f24511b);
        return bundle;
    }

    public k2(float f10) {
        com.google.android.exoplayer2.util.a.b(f10 >= 0.0f && f10 <= 100.0f, "percent must be in the range of [0, 100]");
        this.f24511b = f10;
    }
}
