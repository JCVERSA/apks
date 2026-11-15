package com.yandex.mobile.ads.impl;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.yandex.mobile.ads.impl.km;
import com.yandex.mobile.ads.impl.n22;
import java.util.Arrays;

public final class n22 extends kn1 {
    public static final km.a<n22> e = new km.a() {
        @Override
        public final km fromBundle(Bundle bundle) {
            return n22.b(bundle);
        }
    };

    @IntRange(from = 1)
    private final int c;
    private final float d;

    public n22(@IntRange(from = 1) int i) {
        hg.a("maxStars must be a positive integer", i > 0);
        this.c = i;
        this.d = -1.0f;
    }

    public static n22 b(Bundle bundle) {
        if (bundle.getInt(Integer.toString(0, 36), -1) != 2) {
            throw new IllegalArgumentException();
        }
        int i = bundle.getInt(Integer.toString(1, 36), 5);
        float f = bundle.getFloat(Integer.toString(2, 36), -1.0f);
        return f == -1.0f ? new n22(i) : new n22(i, f);
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof n22)) {
            return false;
        }
        n22 n22Var = (n22) obj;
        return this.c == n22Var.c && this.d == n22Var.d;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.c), Float.valueOf(this.d)});
    }

    public n22(@IntRange(from = 1) int i, @FloatRange(from = 0.0d) float f) {
        boolean z = false;
        hg.a("maxStars must be a positive integer", i > 0);
        if (f >= 0.0f && f <= i) {
            z = true;
        }
        hg.a("starRating is out of range [0, maxStars]", z);
        this.c = i;
        this.d = f;
    }
}
