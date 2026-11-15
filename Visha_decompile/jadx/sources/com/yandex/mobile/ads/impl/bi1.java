package com.yandex.mobile.ads.impl;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.yandex.mobile.ads.impl.bi1;
import com.yandex.mobile.ads.impl.km;
import java.util.Locale;

public final class bi1 implements km {
    public static final bi1 e = new bi1(1.0f, 1.0f);
    public final float b;
    public final float c;
    private final int d;

    static {
        new km.a() {
            @Override
            public final km fromBundle(Bundle bundle) {
                return bi1.a(bundle);
            }
        };
    }

    public bi1(@FloatRange(from = 0.0d, fromInclusive = false) float f, @FloatRange(from = 0.0d, fromInclusive = false) float f2) {
        hg.a(f > 0.0f);
        hg.a(f2 > 0.0f);
        this.b = f;
        this.c = f2;
        this.d = Math.round(f * 1000.0f);
    }

    public final long a(long j) {
        return j * ((long) this.d);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || bi1.class != obj.getClass()) {
            return false;
        }
        bi1 bi1Var = (bi1) obj;
        return this.b == bi1Var.b && this.c == bi1Var.c;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.c) + ((Float.floatToRawIntBits(this.b) + 527) * 31);
    }

    public final String toString() {
        Object[] objArr = {Float.valueOf(this.b), Float.valueOf(this.c)};
        int i = f92.a;
        return String.format(Locale.US, "PlaybackParameters(speed=%.2f, pitch=%.2f)", objArr);
    }

    public static bi1 a(Bundle bundle) {
        return new bi1(bundle.getFloat(Integer.toString(0, 36), 1.0f), bundle.getFloat(Integer.toString(1, 36), 1.0f));
    }
}
