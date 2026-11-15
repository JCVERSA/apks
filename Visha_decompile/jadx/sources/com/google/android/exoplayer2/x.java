package com.google.android.exoplayer2;

import android.os.Bundle;
import com.google.android.exoplayer2.e;
import com.google.android.exoplayer2.x;
import defpackage.kc7;
import defpackage.zi;

public final class x extends v {
    public static final e.a e = new e.a() {
        @Override
        public final e fromBundle(Bundle bundle) {
            return x.e(bundle);
        }
    };
    public final int c;
    public final float d;

    public x(int i) {
        zi.b(i > 0, "maxStars must be a positive integer");
        this.c = i;
        this.d = -1.0f;
    }

    private static String c(int i) {
        return Integer.toString(i, 36);
    }

    public static x e(Bundle bundle) {
        zi.a(bundle.getInt(c(0), -1) == 2);
        int i = bundle.getInt(c(1), 5);
        float f = bundle.getFloat(c(2), -1.0f);
        return f == -1.0f ? new x(i) : new x(i, f);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return this.c == xVar.c && this.d == xVar.d;
    }

    public int hashCode() {
        return kc7.b(Integer.valueOf(this.c), Float.valueOf(this.d));
    }

    @Override
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), 2);
        bundle.putInt(c(1), this.c);
        bundle.putFloat(c(2), this.d);
        return bundle;
    }

    public x(int i, float f) {
        boolean z = false;
        zi.b(i > 0, "maxStars must be a positive integer");
        if (f >= 0.0f && f <= i) {
            z = true;
        }
        zi.b(z, "starRating is out of range [0, maxStars]");
        this.c = i;
        this.d = f;
    }
}
