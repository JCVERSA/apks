package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.android.exoplayer2.e;
import com.google.android.exoplayer2.r;
import defpackage.kc7;
import defpackage.zi;

public final class r extends v {
    public static final e.a d = new e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return r.e(bundle);
        }
    };
    public final float c;

    public r() {
        this.c = -1.0f;
    }

    private static String c(int i) {
        return Integer.toString(i, 36);
    }

    public static r e(Bundle bundle) {
        zi.a(bundle.getInt(c(0), -1) == 1);
        float f = bundle.getFloat(c(1), -1.0f);
        return f == -1.0f ? new r() : new r(f);
    }

    public boolean equals(Object obj) {
        return (obj instanceof r) && this.c == ((r) obj).c;
    }

    public int hashCode() {
        return kc7.b(Float.valueOf(this.c));
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), 1);
        bundle.putFloat(c(1), this.c);
        return bundle;
    }

    public r(float f) {
        zi.b(f >= 0.0f && f <= 100.0f, "percent must be in the range of [0, 100]");
        this.c = f;
    }
}
