package com.yandex.mobile.ads.impl;

import android.os.Bundle;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.hunantv.media.drm.IDrmSession;
import com.yandex.mobile.ads.impl.cg2;
import com.yandex.mobile.ads.impl.km;

public final class cg2 implements km {
    public static final int f = 0;

    @IntRange(from = 0)
    public final int b;

    @IntRange(from = 0)
    public final int c;

    @IntRange(from = 0, to = 359)
    public final int d;

    @FloatRange(from = 0.0d, fromInclusive = false)
    public final float e;

    static {
        new km.a() {
            @Override
            public final km fromBundle(Bundle bundle) {
                return cg2.a(bundle);
            }
        };
    }

    public cg2(@IntRange(from = 0) int i, @IntRange(from = 0) int i2, @IntRange(from = 0, to = 359) int i3, @FloatRange(from = 0.0d, fromInclusive = false) float f2) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = f2;
    }

    public static cg2 a(Bundle bundle) {
        return new cg2(bundle.getInt(Integer.toString(0, 36), 0), bundle.getInt(Integer.toString(1, 36), 0), bundle.getInt(Integer.toString(2, 36), 0), bundle.getFloat(Integer.toString(3, 36), 1.0f));
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cg2)) {
            return false;
        }
        cg2 cg2Var = (cg2) obj;
        return this.b == cg2Var.b && this.c == cg2Var.c && this.d == cg2Var.d && this.e == cg2Var.e;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.e) + ((((((this.b + IDrmSession.ERROR_SESSION_DRM_INFO_EMPTY) * 31) + this.c) * 31) + this.d) * 31);
    }
}
