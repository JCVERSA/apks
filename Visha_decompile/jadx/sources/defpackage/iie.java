package defpackage;

import android.text.Layout;

public final class iie {
    public String a;
    public int b;
    public boolean c;
    public int d;
    public boolean e;
    public float k;
    public String l;
    public Layout.Alignment o;
    public Layout.Alignment p;
    public xhe r;
    public String t;
    public String u;
    public int f = -1;
    public int g = -1;
    public int h = -1;
    public int i = -1;
    public int j = -1;
    public int m = -1;
    public int n = -1;
    public int q = -1;
    public float s = Float.MAX_VALUE;

    public final iie A(int i) {
        this.d = i;
        this.e = true;
        return this;
    }

    public final iie B(boolean z) {
        this.h = z ? 1 : 0;
        return this;
    }

    public final iie C(String str) {
        this.u = str;
        return this;
    }

    public final iie D(int i) {
        this.b = i;
        this.c = true;
        return this;
    }

    public final iie E(String str) {
        this.a = str;
        return this;
    }

    public final iie F(float f) {
        this.k = f;
        return this;
    }

    public final iie G(int i) {
        this.j = i;
        return this;
    }

    public final iie H(String str) {
        this.l = str;
        return this;
    }

    public final iie I(boolean z) {
        this.i = z ? 1 : 0;
        return this;
    }

    public final iie J(boolean z) {
        this.f = z ? 1 : 0;
        return this;
    }

    public final iie K(Layout.Alignment alignment) {
        this.p = alignment;
        return this;
    }

    public final iie L(String str) {
        this.t = str;
        return this;
    }

    public final iie M(int i) {
        this.n = i;
        return this;
    }

    public final iie N(int i) {
        this.m = i;
        return this;
    }

    public final iie a(float f) {
        this.s = f;
        return this;
    }

    public final iie b(Layout.Alignment alignment) {
        this.o = alignment;
        return this;
    }

    public final iie c(boolean z) {
        this.q = z ? 1 : 0;
        return this;
    }

    public final iie d(xhe xheVar) {
        this.r = xheVar;
        return this;
    }

    public final iie e(boolean z) {
        this.g = z ? 1 : 0;
        return this;
    }

    public final String f() {
        return this.u;
    }

    public final String g() {
        return this.a;
    }

    public final String h() {
        return this.l;
    }

    public final String i() {
        return this.t;
    }

    public final boolean j() {
        return this.q == 1;
    }

    public final boolean k() {
        return this.e;
    }

    public final boolean l() {
        return this.c;
    }

    public final boolean m() {
        return this.f == 1;
    }

    public final boolean n() {
        return this.g == 1;
    }

    public final float o() {
        return this.k;
    }

    public final float p() {
        return this.s;
    }

    public final int q() {
        if (this.e) {
            return this.d;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public final int r() {
        if (this.c) {
            return this.b;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    public final int s() {
        return this.j;
    }

    public final int t() {
        return this.n;
    }

    public final int u() {
        return this.m;
    }

    public final int v() {
        int i = this.h;
        if (i == -1 && this.i == -1) {
            return -1;
        }
        return (i == 1 ? 1 : 0) | (this.i == 1 ? 2 : 0);
    }

    public final Layout.Alignment w() {
        return this.p;
    }

    public final Layout.Alignment x() {
        return this.o;
    }

    public final xhe y() {
        return this.r;
    }

    public final iie z(iie iieVar) {
        int i;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (iieVar != null) {
            if (!this.c && iieVar.c) {
                D(iieVar.b);
            }
            if (this.h == -1) {
                this.h = iieVar.h;
            }
            if (this.i == -1) {
                this.i = iieVar.i;
            }
            if (this.a == null && (str = iieVar.a) != null) {
                this.a = str;
            }
            if (this.f == -1) {
                this.f = iieVar.f;
            }
            if (this.g == -1) {
                this.g = iieVar.g;
            }
            if (this.n == -1) {
                this.n = iieVar.n;
            }
            if (this.o == null && (alignment2 = iieVar.o) != null) {
                this.o = alignment2;
            }
            if (this.p == null && (alignment = iieVar.p) != null) {
                this.p = alignment;
            }
            if (this.q == -1) {
                this.q = iieVar.q;
            }
            if (this.j == -1) {
                this.j = iieVar.j;
                this.k = iieVar.k;
            }
            if (this.r == null) {
                this.r = iieVar.r;
            }
            if (this.s == Float.MAX_VALUE) {
                this.s = iieVar.s;
            }
            if (this.t == null) {
                this.t = iieVar.t;
            }
            if (this.u == null) {
                this.u = iieVar.u;
            }
            if (!this.e && iieVar.e) {
                A(iieVar.d);
            }
            if (this.m == -1 && (i = iieVar.m) != -1) {
                this.m = i;
            }
        }
        return this;
    }
}
