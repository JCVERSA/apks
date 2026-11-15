package defpackage;

import android.graphics.Bitmap;
import android.text.Layout;

public final class zvf {
    public CharSequence a;
    public Bitmap b;
    public Layout.Alignment c;
    public Layout.Alignment d;
    public float e;
    public int f;
    public int g;
    public float h;
    public int i;
    public int j;
    public float k;
    public float l;
    public float m;
    public int n;
    public float o;

    public zvf() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = -3.4028235E38f;
        this.f = Integer.MIN_VALUE;
        this.g = Integer.MIN_VALUE;
        this.h = -3.4028235E38f;
        this.i = Integer.MIN_VALUE;
        this.j = Integer.MIN_VALUE;
        this.k = -3.4028235E38f;
        this.l = -3.4028235E38f;
        this.m = -3.4028235E38f;
        this.n = Integer.MIN_VALUE;
    }

    public final int a() {
        return this.g;
    }

    public final int b() {
        return this.i;
    }

    public final zvf c(Bitmap bitmap) {
        this.b = bitmap;
        return this;
    }

    public final zvf d(float f) {
        this.m = f;
        return this;
    }

    public final zvf e(float f, int i) {
        this.e = f;
        this.f = i;
        return this;
    }

    public final zvf f(int i) {
        this.g = i;
        return this;
    }

    public final zvf g(Layout.Alignment alignment) {
        this.d = alignment;
        return this;
    }

    public final zvf h(float f) {
        this.h = f;
        return this;
    }

    public final zvf i(int i) {
        this.i = i;
        return this;
    }

    public final zvf j(float f) {
        this.o = f;
        return this;
    }

    public final zvf k(float f) {
        this.l = f;
        return this;
    }

    public final zvf l(CharSequence charSequence) {
        this.a = charSequence;
        return this;
    }

    public final zvf m(Layout.Alignment alignment) {
        this.c = alignment;
        return this;
    }

    public final zvf n(float f, int i) {
        this.k = f;
        this.j = i;
        return this;
    }

    public final zvf o(int i) {
        this.n = i;
        return this;
    }

    public final fyf p() {
        return new fyf(this.a, this.c, this.d, this.b, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, false, -16777216, this.n, this.o, null);
    }

    public final CharSequence q() {
        return this.a;
    }

    public zvf(fyf fyfVar, cxf cxfVar) {
        this.a = fyfVar.a;
        this.b = fyfVar.d;
        this.c = fyfVar.b;
        this.d = fyfVar.c;
        this.e = fyfVar.e;
        this.f = fyfVar.f;
        this.g = fyfVar.g;
        this.h = fyfVar.h;
        this.i = fyfVar.i;
        this.j = fyfVar.l;
        this.k = fyfVar.m;
        this.l = fyfVar.j;
        this.m = fyfVar.k;
        this.n = fyfVar.n;
        this.o = fyfVar.o;
    }
}
