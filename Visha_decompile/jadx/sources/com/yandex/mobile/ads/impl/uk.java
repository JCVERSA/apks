package com.yandex.mobile.ads.impl;

import androidx.annotation.Nullable;
import com.yandex.mobile.ads.impl.jc0;
import com.yandex.mobile.ads.impl.uk;
import java.util.Arrays;
import java.util.Comparator;

public abstract class uk implements h70 {
    protected final y52 a;
    protected final int b;
    protected final int[] c;
    private final jc0[] d;
    private int e;

    public uk(y52 y52Var, int[] iArr) {
        int i = 0;
        hg.b(iArr.length > 0);
        this.a = (y52) hg.a(y52Var);
        int length = iArr.length;
        this.b = length;
        this.d = new jc0[length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.d[i2] = y52Var.a(iArr[i2]);
        }
        Arrays.sort(this.d, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return uk.a((jc0) obj, (jc0) obj2);
            }
        });
        this.c = new int[this.b];
        while (true) {
            int i3 = this.b;
            if (i >= i3) {
                long[] jArr = new long[i3];
                return;
            } else {
                this.c[i] = y52Var.a(this.d[i]);
                i++;
            }
        }
    }

    @Override
    public void a(float f) {
    }

    @Override
    public void c() {
    }

    @Override
    public void d() {
    }

    @Override
    public final jc0 e() {
        return this.d[0];
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        uk ukVar = (uk) obj;
        return this.a == ukVar.a && Arrays.equals(this.c, ukVar.c);
    }

    public final int hashCode() {
        if (this.e == 0) {
            this.e = Arrays.hashCode(this.c) + (System.identityHashCode(this.a) * 31);
        }
        return this.e;
    }

    @Override
    public final jc0 a(int i) {
        return this.d[i];
    }

    @Override
    public final int b(int i) {
        return this.c[i];
    }

    @Override
    public final int c(int i) {
        for (int i2 = 0; i2 < this.b; i2++) {
            if (this.c[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override
    public final y52 a() {
        return this.a;
    }

    @Override
    public final int b() {
        return this.c.length;
    }

    public static int a(jc0 jc0Var, jc0 jc0Var2) {
        return jc0Var2.i - jc0Var.i;
    }
}
