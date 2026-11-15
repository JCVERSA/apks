package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.hz9;
import defpackage.y45;
import java.util.Arrays;
import java.util.Locale;

public final class rb0 implements gz1 {
    private final gz1.a a;
    private final int b;
    private final int c;
    private final String d;

    public rb0(int i, int i2, gz1.a aVar) {
        y45.j(aVar, "sizeType");
        this.a = aVar;
        this.b = (i >= 0 || -1 == i) ? i : 0;
        this.c = (i2 >= 0 || -2 == i2) ? i2 : 0;
        hz9 hz9Var = hz9.a;
        String str = String.format(Locale.US, "%dx%d", Arrays.copyOf(new Object[]{Integer.valueOf(i), Integer.valueOf(i2)}, 2));
        y45.i(str, "format(...)");
        this.d = str;
    }

    @Override
    public final int a(Context context) {
        y45.j(context, "context");
        int i = this.c;
        return -2 == i ? wh2.b(context) : i;
    }

    @Override
    public final int b(Context context) {
        y45.j(context, "context");
        int i = this.c;
        if (-2 != i) {
            return wh2.a(context, i);
        }
        int i2 = wh2.b;
        return eb0.a(context, "context").heightPixels;
    }

    @Override
    public final int c(Context context) {
        y45.j(context, "context");
        int i = this.b;
        return -1 == i ? wh2.c(context) : i;
    }

    @Override
    public final int d(Context context) {
        y45.j(context, "context");
        int i = this.b;
        if (-1 != i) {
            return wh2.a(context, i);
        }
        int i2 = wh2.b;
        return eb0.a(context, "context").widthPixels;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !y45.e(rb0.class, obj.getClass())) {
            return false;
        }
        rb0 rb0Var = (rb0) obj;
        if (this.b != rb0Var.b) {
            return false;
        }
        return this.c == rb0Var.c && this.a == rb0Var.a;
    }

    @Override
    public final int getHeight() {
        return this.c;
    }

    @Override
    public final int getWidth() {
        return this.b;
    }

    public final int hashCode() {
        return this.a.hashCode() + v3.a(this.d, ((this.b * 31) + this.c) * 31, 31);
    }

    public final String toString() {
        return this.d;
    }

    @Override
    public final gz1.a a() {
        return this.a;
    }
}
