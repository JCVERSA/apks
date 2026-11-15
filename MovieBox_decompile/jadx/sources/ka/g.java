package ka;

import android.text.Layout;

final class g {

    private String f63898a;

    private int f63899b;

    private boolean f63900c;

    private int f63901d;

    private boolean f63902e;

    private float f63908k;

    private String f63909l;

    private Layout.Alignment f63912o;

    private Layout.Alignment f63913p;

    private b f63915r;

    private int f63903f = -1;

    private int f63904g = -1;

    private int f63905h = -1;

    private int f63906i = -1;

    private int f63907j = -1;

    private int f63910m = -1;

    private int f63911n = -1;

    private int f63914q = -1;

    private float f63916s = Float.MAX_VALUE;

    private g r(g gVar, boolean z10) {
        int i10;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (gVar != null) {
            if (!this.f63900c && gVar.f63900c) {
                w(gVar.f63899b);
            }
            if (this.f63905h == -1) {
                this.f63905h = gVar.f63905h;
            }
            if (this.f63906i == -1) {
                this.f63906i = gVar.f63906i;
            }
            if (this.f63898a == null && (str = gVar.f63898a) != null) {
                this.f63898a = str;
            }
            if (this.f63903f == -1) {
                this.f63903f = gVar.f63903f;
            }
            if (this.f63904g == -1) {
                this.f63904g = gVar.f63904g;
            }
            if (this.f63911n == -1) {
                this.f63911n = gVar.f63911n;
            }
            if (this.f63912o == null && (alignment2 = gVar.f63912o) != null) {
                this.f63912o = alignment2;
            }
            if (this.f63913p == null && (alignment = gVar.f63913p) != null) {
                this.f63913p = alignment;
            }
            if (this.f63914q == -1) {
                this.f63914q = gVar.f63914q;
            }
            if (this.f63907j == -1) {
                this.f63907j = gVar.f63907j;
                this.f63908k = gVar.f63908k;
            }
            if (this.f63915r == null) {
                this.f63915r = gVar.f63915r;
            }
            if (this.f63916s == Float.MAX_VALUE) {
                this.f63916s = gVar.f63916s;
            }
            if (z10 && !this.f63902e && gVar.f63902e) {
                u(gVar.f63901d);
            }
            if (z10 && this.f63910m == -1 && (i10 = gVar.f63910m) != -1) {
                this.f63910m = i10;
            }
        }
        return this;
    }

    public g A(String str) {
        this.f63909l = str;
        return this;
    }

    public g B(boolean z10) {
        this.f63906i = z10 ? 1 : 0;
        return this;
    }

    public g C(boolean z10) {
        this.f63903f = z10 ? 1 : 0;
        return this;
    }

    public g D(Layout.Alignment alignment) {
        this.f63913p = alignment;
        return this;
    }

    public g E(int i10) {
        this.f63911n = i10;
        return this;
    }

    public g F(int i10) {
        this.f63910m = i10;
        return this;
    }

    public g G(float f10) {
        this.f63916s = f10;
        return this;
    }

    public g H(Layout.Alignment alignment) {
        this.f63912o = alignment;
        return this;
    }

    public g I(boolean z10) {
        this.f63914q = z10 ? 1 : 0;
        return this;
    }

    public g J(b bVar) {
        this.f63915r = bVar;
        return this;
    }

    public g K(boolean z10) {
        this.f63904g = z10 ? 1 : 0;
        return this;
    }

    public g a(g gVar) {
        return r(gVar, true);
    }

    public int b() {
        if (this.f63902e) {
            return this.f63901d;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public int c() {
        if (this.f63900c) {
            return this.f63899b;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    public String d() {
        return this.f63898a;
    }

    public float e() {
        return this.f63908k;
    }

    public int f() {
        return this.f63907j;
    }

    public String g() {
        return this.f63909l;
    }

    public Layout.Alignment h() {
        return this.f63913p;
    }

    public int i() {
        return this.f63911n;
    }

    public int j() {
        return this.f63910m;
    }

    public float k() {
        return this.f63916s;
    }

    public int l() {
        int i10 = this.f63905h;
        if (i10 == -1 && this.f63906i == -1) {
            return -1;
        }
        return (i10 == 1 ? 1 : 0) | (this.f63906i == 1 ? 2 : 0);
    }

    public Layout.Alignment m() {
        return this.f63912o;
    }

    public boolean n() {
        return this.f63914q == 1;
    }

    public b o() {
        return this.f63915r;
    }

    public boolean p() {
        return this.f63902e;
    }

    public boolean q() {
        return this.f63900c;
    }

    public boolean s() {
        return this.f63903f == 1;
    }

    public boolean t() {
        return this.f63904g == 1;
    }

    public g u(int i10) {
        this.f63901d = i10;
        this.f63902e = true;
        return this;
    }

    public g v(boolean z10) {
        this.f63905h = z10 ? 1 : 0;
        return this;
    }

    public g w(int i10) {
        this.f63899b = i10;
        this.f63900c = true;
        return this;
    }

    public g x(String str) {
        this.f63898a = str;
        return this;
    }

    public g y(float f10) {
        this.f63908k = f10;
        return this;
    }

    public g z(int i10) {
        this.f63907j = i10;
        return this;
    }
}
