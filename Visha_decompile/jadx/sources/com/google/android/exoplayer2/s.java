package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.android.exoplayer2.e;
import com.google.android.exoplayer2.s;
import defpackage.blb;
import defpackage.zi;

public final class s implements e {
    public static final s e = new s(1.0f);
    public static final e.a f = new e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return s.d(bundle);
        }
    };
    public final float b;
    public final float c;
    public final int d;

    public s(float f2) {
        this(f2, 1.0f);
    }

    private static String c(int i) {
        return Integer.toString(i, 36);
    }

    public static s d(Bundle bundle) {
        return new s(bundle.getFloat(c(0), 1.0f), bundle.getFloat(c(1), 1.0f));
    }

    public long b(long j) {
        return j * ((long) this.d);
    }

    public s e(float f2) {
        return new s(f2, this.c);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || s.class != obj.getClass()) {
            return false;
        }
        s sVar = (s) obj;
        return this.b == sVar.b && this.c == sVar.c;
    }

    public int hashCode() {
        return ((527 + Float.floatToRawIntBits(this.b)) * 31) + Float.floatToRawIntBits(this.c);
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putFloat(c(0), this.b);
        bundle.putFloat(c(1), this.c);
        return bundle;
    }

    public String toString() {
        return blb.z("PlaybackParameters(speed=%.2f, pitch=%.2f)", Float.valueOf(this.b), Float.valueOf(this.c));
    }

    public s(float f2, float f3) {
        zi.a(f2 > 0.0f);
        zi.a(f3 > 0.0f);
        this.b = f2;
        this.c = f3;
        this.d = Math.round(f2 * 1000.0f);
    }
}
