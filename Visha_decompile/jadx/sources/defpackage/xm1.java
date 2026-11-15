package defpackage;

public class xm1 extends i53.c {
    public xm1(t43 t43Var, w43 w43Var, w43 w43Var2) {
        super(t43Var, w43Var, w43Var2);
    }

    @Override
    public i53 E() {
        if (t()) {
            return this;
        }
        return this.c.i() ? i().s() : J(true);
    }

    @Override
    public i53 F(i53 i53Var) {
        if (this == i53Var) {
            return I();
        }
        if (t()) {
            return i53Var;
        }
        if (i53Var.t()) {
            return E();
        }
        return this.c.i() ? i53Var : J(false).a(i53Var);
    }

    public wm1 G(wm1 wm1Var, int[] iArr) {
        wm1 wm1Var2 = (wm1) i().m();
        if (wm1Var.h()) {
            return wm1Var2;
        }
        wm1 wm1Var3 = new wm1();
        if (iArr == null) {
            iArr = wm1Var3.g;
            vm1.n(wm1Var.g, iArr);
        }
        vm1.n(iArr, wm1Var3.g);
        int[] iArr2 = wm1Var3.g;
        vm1.g(iArr2, wm1Var2.g, iArr2);
        return wm1Var3;
    }

    public wm1 H() {
        w43[] w43VarArr = this.d;
        wm1 wm1Var = (wm1) w43VarArr[1];
        if (wm1Var != null) {
            return wm1Var;
        }
        wm1 wm1VarG = G((wm1) w43VarArr[0], null);
        w43VarArr[1] = wm1VarG;
        return wm1VarG;
    }

    public i53 I() {
        return (t() || this.c.i()) ? this : J(false).a(this);
    }

    public xm1 J(boolean z) {
        wm1 wm1Var;
        wm1 wm1Var2 = (wm1) this.b;
        wm1 wm1Var3 = (wm1) this.c;
        wm1 wm1Var4 = (wm1) this.d[0];
        wm1 wm1VarH = H();
        int[] iArrI = py6.i();
        vm1.n(wm1Var2.g, iArrI);
        vm1.m(py6.b(iArrI, iArrI, iArrI) + py6.d(wm1VarH.g, iArrI), iArrI);
        int[] iArrI2 = py6.i();
        vm1.s(wm1Var3.g, iArrI2);
        int[] iArrI3 = py6.i();
        vm1.g(iArrI2, wm1Var3.g, iArrI3);
        int[] iArrI4 = py6.i();
        vm1.g(iArrI3, wm1Var2.g, iArrI4);
        vm1.s(iArrI4, iArrI4);
        int[] iArrI5 = py6.i();
        vm1.n(iArrI3, iArrI5);
        vm1.s(iArrI5, iArrI5);
        wm1 wm1Var5 = new wm1(iArrI3);
        vm1.n(iArrI, wm1Var5.g);
        int[] iArr = wm1Var5.g;
        vm1.r(iArr, iArrI4, iArr);
        int[] iArr2 = wm1Var5.g;
        vm1.r(iArr2, iArrI4, iArr2);
        wm1 wm1Var6 = new wm1(iArrI4);
        vm1.r(iArrI4, wm1Var5.g, wm1Var6.g);
        int[] iArr3 = wm1Var6.g;
        vm1.g(iArr3, iArrI, iArr3);
        int[] iArr4 = wm1Var6.g;
        vm1.r(iArr4, iArrI5, iArr4);
        wm1 wm1Var7 = new wm1(iArrI2);
        if (!py6.t(wm1Var4.g)) {
            int[] iArr5 = wm1Var7.g;
            vm1.g(iArr5, wm1Var4.g, iArr5);
        }
        if (z) {
            wm1Var = new wm1(iArrI5);
            int[] iArr6 = wm1Var.g;
            vm1.g(iArr6, wm1VarH.g, iArr6);
            int[] iArr7 = wm1Var.g;
            vm1.s(iArr7, iArr7);
        } else {
            wm1Var = null;
        }
        return new xm1(i(), wm1Var5, wm1Var6, new w43[]{wm1Var7, wm1Var});
    }

    @Override
    public i53 a(i53 i53Var) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        if (t()) {
            return i53Var;
        }
        if (i53Var.t()) {
            return this;
        }
        if (this == i53Var) {
            return E();
        }
        t43 t43VarI = i();
        wm1 wm1Var = (wm1) this.b;
        wm1 wm1Var2 = (wm1) this.c;
        wm1 wm1Var3 = (wm1) this.d[0];
        wm1 wm1Var4 = (wm1) i53Var.p();
        wm1 wm1Var5 = (wm1) i53Var.q();
        wm1 wm1Var6 = (wm1) i53Var.r(0);
        int[] iArrK = py6.k();
        int[] iArrI = py6.i();
        int[] iArrI2 = py6.i();
        int[] iArrI3 = py6.i();
        boolean zH = wm1Var3.h();
        if (zH) {
            iArr = wm1Var4.g;
            iArr2 = wm1Var5.g;
        } else {
            vm1.n(wm1Var3.g, iArrI2);
            vm1.g(iArrI2, wm1Var4.g, iArrI);
            vm1.g(iArrI2, wm1Var3.g, iArrI2);
            vm1.g(iArrI2, wm1Var5.g, iArrI2);
            iArr = iArrI;
            iArr2 = iArrI2;
        }
        boolean zH2 = wm1Var6.h();
        if (zH2) {
            iArr3 = wm1Var.g;
            iArr4 = wm1Var2.g;
        } else {
            vm1.n(wm1Var6.g, iArrI3);
            vm1.g(iArrI3, wm1Var.g, iArrK);
            vm1.g(iArrI3, wm1Var6.g, iArrI3);
            vm1.g(iArrI3, wm1Var2.g, iArrI3);
            iArr3 = iArrK;
            iArr4 = iArrI3;
        }
        int[] iArrI4 = py6.i();
        vm1.r(iArr3, iArr, iArrI4);
        vm1.r(iArr4, iArr2, iArrI);
        if (py6.v(iArrI4)) {
            return py6.v(iArrI) ? E() : t43VarI.s();
        }
        int[] iArrI5 = py6.i();
        vm1.n(iArrI4, iArrI5);
        int[] iArrI6 = py6.i();
        vm1.g(iArrI5, iArrI4, iArrI6);
        vm1.g(iArrI5, iArr3, iArrI2);
        vm1.i(iArrI6, iArrI6);
        py6.y(iArr4, iArrI6, iArrK);
        vm1.m(py6.b(iArrI2, iArrI2, iArrI6), iArrI6);
        wm1 wm1Var7 = new wm1(iArrI3);
        vm1.n(iArrI, wm1Var7.g);
        int[] iArr5 = wm1Var7.g;
        vm1.r(iArr5, iArrI6, iArr5);
        wm1 wm1Var8 = new wm1(iArrI6);
        vm1.r(iArrI2, wm1Var7.g, wm1Var8.g);
        vm1.h(wm1Var8.g, iArrI, iArrK);
        vm1.l(iArrK, wm1Var8.g);
        wm1 wm1Var9 = new wm1(iArrI4);
        if (!zH) {
            int[] iArr6 = wm1Var9.g;
            vm1.g(iArr6, wm1Var3.g, iArr6);
        }
        if (!zH2) {
            int[] iArr7 = wm1Var9.g;
            vm1.g(iArr7, wm1Var6.g, iArr7);
        }
        if (!zH || !zH2) {
            iArrI5 = null;
        }
        return new xm1(t43VarI, wm1Var7, wm1Var8, new w43[]{wm1Var9, G(wm1Var9, iArrI5)});
    }

    @Override
    public i53 d() {
        return new xm1(null, f(), g());
    }

    @Override
    public w43 r(int i) {
        return i == 1 ? H() : super.r(i);
    }

    @Override
    public i53 x() {
        return t() ? this : new xm1(i(), this.b, this.c.m(), this.d);
    }

    public xm1(t43 t43Var, w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        super(t43Var, w43Var, w43Var2, w43VarArr);
    }
}
