package com.yandex.mobile.ads.impl;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.yandex.mobile.ads.impl.km;
import com.yandex.mobile.ads.impl.z42;
import java.util.Arrays;

public final class z42 extends kn1 {
    public static final km.a<z42> e = new km.a() {
        @Override
        public final km fromBundle(Bundle bundle) {
            return z42.b(bundle);
        }
    };
    private final boolean c;
    private final boolean d;

    public z42() {
        this.c = false;
        this.d = false;
    }

    public static z42 b(Bundle bundle) {
        if (bundle.getInt(Integer.toString(0, 36), -1) == 3) {
            return bundle.getBoolean(Integer.toString(1, 36), false) ? new z42(bundle.getBoolean(Integer.toString(2, 36), false)) : new z42();
        }
        throw new IllegalArgumentException();
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof z42)) {
            return false;
        }
        z42 z42Var = (z42) obj;
        return this.d == z42Var.d && this.c == z42Var.c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.c), Boolean.valueOf(this.d)});
    }

    public z42(boolean z) {
        this.c = true;
        this.d = z;
    }
}
