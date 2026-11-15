package com.yandex.mobile.ads.impl;

import android.os.Bundle;
import androidx.annotation.Nullable;
import com.yandex.mobile.ads.impl.d62;
import com.yandex.mobile.ads.impl.km;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

public final class d62 implements km {
    public static final km.a<d62> d = new km.a() {
        @Override
        public final km fromBundle(Bundle bundle) {
            return d62.a(bundle);
        }
    };
    public final y52 b;
    public final kk0<Integer> c;

    public d62(y52 y52Var, List<Integer> list) {
        if (!list.isEmpty() && (((Integer) Collections.min(list)).intValue() < 0 || ((Integer) Collections.max(list)).intValue() >= y52Var.b)) {
            throw new IndexOutOfBoundsException();
        }
        this.b = y52Var;
        this.c = kk0.a((Collection) list);
    }

    public static d62 a(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle(Integer.toString(0, 36));
        bundle2.getClass();
        y52 y52Var = (y52) y52.g.fromBundle(bundle2);
        int[] intArray = bundle.getIntArray(Integer.toString(1, 36));
        intArray.getClass();
        return new d62(y52Var, hq0.a(intArray));
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d62.class != obj.getClass()) {
            return false;
        }
        d62 d62Var = (d62) obj;
        return this.b.equals(d62Var.b) && this.c.equals(d62Var.c);
    }

    public final int hashCode() {
        return (this.c.hashCode() * 31) + this.b.hashCode();
    }
}
