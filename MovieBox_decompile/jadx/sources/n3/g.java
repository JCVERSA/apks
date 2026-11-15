package n3;

import android.text.Layout;

final class g {

    private String f66905a;

    private int f66906b;

    private boolean f66907c;

    private int f66908d;

    private boolean f66909e;

    private float f66915k;

    private String f66916l;

    private Layout.Alignment f66919o;

    private Layout.Alignment f66920p;

    private b f66922r;

    private String f66924t;

    private String f66925u;

    private int f66910f = -1;

    private int f66911g = -1;

    private int f66912h = -1;

    private int f66913i = -1;

    private int f66914j = -1;

    private int f66917m = -1;

    private int f66918n = -1;

    private int f66921q = -1;

    private float f66923s = Float.MAX_VALUE;

    private g t(g gVar, boolean z10) {
        int i10;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (gVar != null) {
            if (!this.f66907c && gVar.f66907c) {
                z(gVar.f66906b);
            }
            if (this.f66912h == -1) {
                this.f66912h = gVar.f66912h;
            }
            if (this.f66913i == -1) {
                this.f66913i = gVar.f66913i;
            }
            if (this.f66905a == null && (str = gVar.f66905a) != null) {
                this.f66905a = str;
            }
            if (this.f66910f == -1) {
                this.f66910f = gVar.f66910f;
            }
            if (this.f66911g == -1) {
                this.f66911g = gVar.f66911g;
            }
            if (this.f66918n == -1) {
                this.f66918n = gVar.f66918n;
            }
            if (this.f66919o == null && (alignment2 = gVar.f66919o) != null) {
                this.f66919o = alignment2;
            }
            if (this.f66920p == null && (alignment = gVar.f66920p) != null) {
                this.f66920p = alignment;
            }
            if (this.f66921q == -1) {
                this.f66921q = gVar.f66921q;
            }
            if (this.f66914j == -1) {
                this.f66914j = gVar.f66914j;
                this.f66915k = gVar.f66915k;
            }
            if (this.f66922r == null) {
                this.f66922r = gVar.f66922r;
            }
            if (this.f66923s == Float.MAX_VALUE) {
                this.f66923s = gVar.f66923s;
            }
            if (this.f66924t == null) {
                this.f66924t = gVar.f66924t;
            }
            if (this.f66925u == null) {
                this.f66925u = gVar.f66925u;
            }
            if (z10 && !this.f66909e && gVar.f66909e) {
                w(gVar.f66908d);
            }
            if (z10 && this.f66917m == -1 && (i10 = gVar.f66917m) != -1) {
                this.f66917m = i10;
            }
        }
        return this;
    }

    public g A(String str) {
        this.f66905a = str;
        return this;
    }

    public g B(float f10) {
        this.f66915k = f10;
        return this;
    }

    public g C(int i10) {
        this.f66914j = i10;
        return this;
    }

    public g D(String str) {
        this.f66916l = str;
        return this;
    }

    public g E(boolean z10) {
        this.f66913i = z10 ? 1 : 0;
        return this;
    }

    public g F(boolean z10) {
        this.f66910f = z10 ? 1 : 0;
        return this;
    }

    public g G(Layout.Alignment alignment) {
        this.f66920p = alignment;
        return this;
    }

    public g H(String str) {
        this.f66924t = str;
        return this;
    }

    public g I(int i10) {
        this.f66918n = i10;
        return this;
    }

    public g J(int i10) {
        this.f66917m = i10;
        return this;
    }

    public g K(float f10) {
        this.f66923s = f10;
        return this;
    }

    public g L(Layout.Alignment alignment) {
        this.f66919o = alignment;
        return this;
    }

    public g M(boolean z10) {
        this.f66921q = z10 ? 1 : 0;
        return this;
    }

    public g N(b bVar) {
        this.f66922r = bVar;
        return this;
    }

    public g O(boolean z10) {
        this.f66911g = z10 ? 1 : 0;
        return this;
    }

    public g a(g gVar) {
        return t(gVar, true);
    }

    public int b() {
        if (this.f66909e) {
            return this.f66908d;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public String c() {
        return this.f66925u;
    }

    public int d() {
        if (this.f66907c) {
            return this.f66906b;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    public String e() {
        return this.f66905a;
    }

    public float f() {
        return this.f66915k;
    }

    public int g() {
        return this.f66914j;
    }

    public String h() {
        return this.f66916l;
    }

    public Layout.Alignment i() {
        return this.f66920p;
    }

    public String j() {
        return this.f66924t;
    }

    public int k() {
        return this.f66918n;
    }

    public int l() {
        return this.f66917m;
    }

    public float m() {
        return this.f66923s;
    }

    public int n() {
        int i10 = this.f66912h;
        if (i10 == -1 && this.f66913i == -1) {
            return -1;
        }
        return (i10 == 1 ? 1 : 0) | (this.f66913i == 1 ? 2 : 0);
    }

    public Layout.Alignment o() {
        return this.f66919o;
    }

    public boolean p() {
        return this.f66921q == 1;
    }

    public b q() {
        return this.f66922r;
    }

    public boolean r() {
        return this.f66909e;
    }

    public boolean s() {
        return this.f66907c;
    }

    public boolean u() {
        return this.f66910f == 1;
    }

    public boolean v() {
        return this.f66911g == 1;
    }

    public g w(int i10) {
        this.f66908d = i10;
        this.f66909e = true;
        return this;
    }

    public g x(boolean z10) {
        this.f66912h = z10 ? 1 : 0;
        return this;
    }

    public g y(String str) {
        this.f66925u = str;
        return this;
    }

    public g z(int i10) {
        this.f66906b = i10;
        this.f66907c = true;
        return this;
    }
}
