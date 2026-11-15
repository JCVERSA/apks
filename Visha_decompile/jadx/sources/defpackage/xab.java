package defpackage;

import android.text.Layout;

public final class xab {
    public String a;
    public int b;
    public boolean c;
    public int d;
    public boolean e;
    public float k;
    public String l;
    public Layout.Alignment o;
    public Layout.Alignment p;
    public eha r;
    public int f = -1;
    public int g = -1;
    public int h = -1;
    public int i = -1;
    public int j = -1;
    public int m = -1;
    public int n = -1;
    public int q = -1;
    public float s = Float.MAX_VALUE;

    public xab A(String str) {
        this.l = str;
        return this;
    }

    public xab B(boolean z) {
        this.i = z ? 1 : 0;
        return this;
    }

    public xab C(boolean z) {
        this.f = z ? 1 : 0;
        return this;
    }

    public xab D(Layout.Alignment alignment) {
        this.p = alignment;
        return this;
    }

    public xab E(int i) {
        this.n = i;
        return this;
    }

    public xab F(int i) {
        this.m = i;
        return this;
    }

    public xab G(float f) {
        this.s = f;
        return this;
    }

    public xab H(Layout.Alignment alignment) {
        this.o = alignment;
        return this;
    }

    public xab I(boolean z) {
        this.q = z ? 1 : 0;
        return this;
    }

    public xab J(eha ehaVar) {
        this.r = ehaVar;
        return this;
    }

    public xab K(boolean z) {
        this.g = z ? 1 : 0;
        return this;
    }

    public xab a(xab xabVar) {
        return r(xabVar, true);
    }

    public int b() {
        if (this.e) {
            return this.d;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public int c() {
        if (this.c) {
            return this.b;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    public String d() {
        return this.a;
    }

    public float e() {
        return this.k;
    }

    public int f() {
        return this.j;
    }

    public String g() {
        return this.l;
    }

    public Layout.Alignment h() {
        return this.p;
    }

    public int i() {
        return this.n;
    }

    public int j() {
        return this.m;
    }

    public float k() {
        return this.s;
    }

    public int l() {
        int i = this.h;
        if (i == -1 && this.i == -1) {
            return -1;
        }
        return (i == 1 ? 1 : 0) | (this.i == 1 ? 2 : 0);
    }

    public Layout.Alignment m() {
        return this.o;
    }

    public boolean n() {
        return this.q == 1;
    }

    public eha o() {
        return this.r;
    }

    public boolean p() {
        return this.e;
    }

    public boolean q() {
        return this.c;
    }

    public final xab r(xab xabVar, boolean z) {
        int i;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (xabVar != null) {
            if (!this.c && xabVar.c) {
                w(xabVar.b);
            }
            if (this.h == -1) {
                this.h = xabVar.h;
            }
            if (this.i == -1) {
                this.i = xabVar.i;
            }
            if (this.a == null && (str = xabVar.a) != null) {
                this.a = str;
            }
            if (this.f == -1) {
                this.f = xabVar.f;
            }
            if (this.g == -1) {
                this.g = xabVar.g;
            }
            if (this.n == -1) {
                this.n = xabVar.n;
            }
            if (this.o == null && (alignment2 = xabVar.o) != null) {
                this.o = alignment2;
            }
            if (this.p == null && (alignment = xabVar.p) != null) {
                this.p = alignment;
            }
            if (this.q == -1) {
                this.q = xabVar.q;
            }
            if (this.j == -1) {
                this.j = xabVar.j;
                this.k = xabVar.k;
            }
            if (this.r == null) {
                this.r = xabVar.r;
            }
            if (this.s == Float.MAX_VALUE) {
                this.s = xabVar.s;
            }
            if (z && !this.e && xabVar.e) {
                u(xabVar.d);
            }
            if (z && this.m == -1 && (i = xabVar.m) != -1) {
                this.m = i;
            }
        }
        return this;
    }

    public boolean s() {
        return this.f == 1;
    }

    public boolean t() {
        return this.g == 1;
    }

    public xab u(int i) {
        this.d = i;
        this.e = true;
        return this;
    }

    public xab v(boolean z) {
        this.h = z ? 1 : 0;
        return this;
    }

    public xab w(int i) {
        this.b = i;
        this.c = true;
        return this;
    }

    public xab x(String str) {
        this.a = str;
        return this;
    }

    public xab y(float f) {
        this.k = f;
        return this;
    }

    public xab z(int i) {
        this.j = i;
        return this;
    }
}
