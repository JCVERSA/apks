package com.google.android.exoplayer2;

import android.os.Bundle;

public final class o2 implements k {

    public static final o2 f24843d = new o2(1.0f);

    public static final k.a f24844e = new k.a() {
        @Override
        public final k a(Bundle bundle) {
            return o2.d(bundle);
        }
    };

    public final float f24845a;

    public final float f24846b;

    private final int f24847c;

    public o2(float f10) {
        this(f10, 1.0f);
    }

    private static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    public static o2 d(Bundle bundle) {
        return new o2(bundle.getFloat(c(0), 1.0f), bundle.getFloat(c(1), 1.0f));
    }

    public long b(long j10) {
        return j10 * ((long) this.f24847c);
    }

    public o2 e(float f10) {
        return new o2(f10, this.f24846b);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || o2.class != obj.getClass()) {
            return false;
        }
        o2 o2Var = (o2) obj;
        return this.f24845a == o2Var.f24845a && this.f24846b == o2Var.f24846b;
    }

    public int hashCode() {
        return ((527 + Float.floatToRawIntBits(this.f24845a)) * 31) + Float.floatToRawIntBits(this.f24846b);
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putFloat(c(0), this.f24845a);
        bundle.putFloat(c(1), this.f24846b);
        return bundle;
    }

    public String toString() {
        return com.google.android.exoplayer2.util.p0.C("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.f24845a), Float.valueOf(this.f24846b));
    }

    public o2(float f10, float f11) {
        com.google.android.exoplayer2.util.a.a(f10 > 0.0f);
        com.google.android.exoplayer2.util.a.a(f11 > 0.0f);
        this.f24845a = f10;
        this.f24846b = f11;
        this.f24847c = Math.round(f10 * 1000.0f);
    }
}
