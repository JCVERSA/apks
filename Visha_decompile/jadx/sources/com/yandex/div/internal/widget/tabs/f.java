package com.yandex.div.internal.widget.tabs;

import android.os.Bundle;

public class f {
    public final int a;
    public int b = -1;
    public int c = -1;
    public int[] d;
    public final a e;

    public interface a {
        int a(int i);
    }

    public f(int i, a aVar) {
        this.a = i;
        this.e = aVar;
        this.d = new int[i];
    }

    public int a() {
        if (this.b < 0) {
            this.b = this.e.a(0);
        }
        return this.b;
    }

    public int b() {
        if (this.c < 0) {
            int iA = a();
            for (int i = 1; i < this.a; i++) {
                iA = Math.max(iA, this.e.a(i));
            }
            this.c = iA;
        }
        return this.c;
    }

    public int c(int i) {
        int i2 = this.a;
        if (i2 == 0) {
            return 0;
        }
        if (i < 0) {
            return c(0);
        }
        if (i >= i2) {
            return c(i2);
        }
        int[] iArr = this.d;
        if (iArr[i] <= 0) {
            iArr[i] = this.e.a(i);
        }
        return this.d[i];
    }

    public void d(Bundle bundle, int i) {
        bundle.remove("FIRST_TAB_HEIGHT_PREFIX" + i);
        bundle.remove("MAX_TAB_HEIGHT_PREFIX" + i);
    }

    public void e(Bundle bundle, int i) {
        this.b = bundle.getInt("FIRST_TAB_HEIGHT_PREFIX" + i, -1);
        this.c = bundle.getInt("MAX_TAB_HEIGHT_PREFIX" + i, -1);
    }
}
