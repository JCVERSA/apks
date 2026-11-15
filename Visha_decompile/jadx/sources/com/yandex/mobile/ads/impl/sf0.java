package com.yandex.mobile.ads.impl;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.yandex.mobile.ads.impl.km;
import com.yandex.mobile.ads.impl.sf0;
import java.util.Arrays;

public final class sf0 extends kn1 {
    public static final km.a<sf0> e = new km.a() {
        @Override
        public final km fromBundle(Bundle bundle) {
            return sf0.b(bundle);
        }
    };
    private final boolean c;
    private final boolean d;

    public sf0() {
        this.c = false;
        this.d = false;
    }

    public static sf0 b(Bundle bundle) {
        if (bundle.getInt(Integer.toString(0, 36), -1) == 0) {
            return bundle.getBoolean(Integer.toString(1, 36), false) ? new sf0(bundle.getBoolean(Integer.toString(2, 36), false)) : new sf0();
        }
        throw new IllegalArgumentException();
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof sf0)) {
            return false;
        }
        sf0 sf0Var = (sf0) obj;
        return this.d == sf0Var.d && this.c == sf0Var.c;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Boolean.valueOf(this.c), Boolean.valueOf(this.d)});
    }

    public sf0(boolean z) {
        this.c = true;
        this.d = z;
    }
}
