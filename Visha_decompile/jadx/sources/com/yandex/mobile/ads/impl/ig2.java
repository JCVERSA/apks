package com.yandex.mobile.ads.impl;

final class ig2 extends e42 {
    private final ag1 b;
    private final ag1 c;
    private int d;
    private boolean e;
    private boolean f;
    private int g;

    public ig2(a62 a62Var) {
        super(a62Var);
        this.b = new ag1(e41.a);
        this.c = new ag1(4);
    }

    public final boolean a(ag1 ag1Var) throws e42.a {
        int iT = ag1Var.t();
        int i = (iT >> 4) & 15;
        int i2 = iT & 15;
        if (i2 != 7) {
            throw new e42.a(oe.a("Video format not supported: ", i2));
        }
        this.g = i;
        return i != 5;
    }

    public final boolean a(long j, ag1 ag1Var) throws eg1 {
        int iT = ag1Var.t();
        long jI = (((long) ag1Var.i()) * 1000) + j;
        if (iT == 0 && !this.e) {
            ag1 ag1Var2 = new ag1(new byte[ag1Var.a()]);
            ag1Var.a(ag1Var2.c(), 0, ag1Var.a());
            ni niVarA = ni.a(ag1Var2);
            this.d = niVarA.b;
            this.a.a(new jc0.a().e("video/avc").a(niVarA.f).o(niVarA.c).f(niVarA.d).b(niVarA.e).a(niVarA.a).a());
            this.e = true;
            return false;
        }
        if (iT != 1 || !this.e) {
            return false;
        }
        int i = this.g == 1 ? 1 : 0;
        if (!this.f && i == 0) {
            return false;
        }
        byte[] bArrC = this.c.c();
        bArrC[0] = 0;
        bArrC[1] = 0;
        bArrC[2] = 0;
        int i2 = 4 - this.d;
        int i3 = 0;
        while (ag1Var.a() > 0) {
            ag1Var.a(this.c.c(), i2, this.d);
            this.c.e(0);
            int iX = this.c.x();
            this.b.e(0);
            this.a.a(4, this.b);
            this.a.a(iX, ag1Var);
            i3 = i3 + 4 + iX;
        }
        this.a.a(jI, i, i3, 0, null);
        this.f = true;
        return true;
    }
}
