package com.yandex.mobile.ads.impl;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import com.yandex.mobile.ads.impl.km;
import com.yandex.mobile.ads.impl.sg1;
import java.util.Arrays;

public final class sg1 extends kn1 {
    public static final km.a<sg1> d = new km.a() {
        @Override
        public final km fromBundle(Bundle bundle) {
            return sg1.b(bundle);
        }
    };
    private final float c;

    public sg1() {
        this.c = -1.0f;
    }

    public static sg1 b(Bundle bundle) {
        if (bundle.getInt(Integer.toString(0, 36), -1) != 1) {
            throw new IllegalArgumentException();
        }
        float f = bundle.getFloat(Integer.toString(1, 36), -1.0f);
        return f == -1.0f ? new sg1() : new sg1(f);
    }

    public final boolean equals(@Nullable Object obj) {
        return (obj instanceof sg1) && this.c == ((sg1) obj).c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Float.valueOf(this.c)});
    }

    public sg1(@FloatRange(from = 0.0d, to = 100.0d) float f) {
        hg.a("percent must be in the range of [0, 100]", f >= 0.0f && f <= 100.0f);
        this.c = f;
    }
}
