package defpackage;

public class ey8 extends i53.c {
    public ey8(t43 t43Var, w43 w43Var, w43 w43Var2) {
        super(t43Var, w43Var, w43Var2);
    }

    @Override
    public i53 E() {
        if (t()) {
            return this;
        }
        t43 t43VarI = i();
        dy8 dy8Var = (dy8) this.c;
        if (dy8Var.i()) {
            return t43VarI.s();
        }
        dy8 dy8Var2 = (dy8) this.b;
        dy8 dy8Var3 = (dy8) this.d[0];
        int[] iArrI = py6.i();
        int[] iArrI2 = py6.i();
        int[] iArrI3 = py6.i();
        cy8.n(dy8Var.g, iArrI3);
        int[] iArrI4 = py6.i();
        cy8.n(iArrI3, iArrI4);
        boolean zH = dy8Var3.h();
        int[] iArr = dy8Var3.g;
        if (!zH) {
            cy8.n(iArr, iArrI2);
            iArr = iArrI2;
        }
        cy8.q(dy8Var2.g, iArr, iArrI);
        cy8.a(dy8Var2.g, iArr, iArrI2);
        cy8.g(iArrI2, iArrI, iArrI2);
        cy8.m(py6.b(iArrI2, iArrI2, iArrI2), iArrI2);
        cy8.g(iArrI3, dy8Var2.g, iArrI3);
        cy8.m(vy6.L(8, iArrI3, 2, 0), iArrI3);
        cy8.m(vy6.M(8, iArrI4, 3, 0, iArrI), iArrI);
        dy8 dy8Var4 = new dy8(iArrI4);
        cy8.n(iArrI2, dy8Var4.g);
        int[] iArr2 = dy8Var4.g;
        cy8.q(iArr2, iArrI3, iArr2);
        int[] iArr3 = dy8Var4.g;
        cy8.q(iArr3, iArrI3, iArr3);
        dy8 dy8Var5 = new dy8(iArrI3);
        cy8.q(iArrI3, dy8Var4.g, dy8Var5.g);
        int[] iArr4 = dy8Var5.g;
        cy8.g(iArr4, iArrI2, iArr4);
        int[] iArr5 = dy8Var5.g;
        cy8.q(iArr5, iArrI, iArr5);
        dy8 dy8Var6 = new dy8(iArrI2);
        cy8.r(dy8Var.g, dy8Var6.g);
        if (!zH) {
            int[] iArr6 = dy8Var6.g;
            cy8.g(iArr6, dy8Var3.g, iArr6);
        }
        return new ey8(t43VarI, dy8Var4, dy8Var5, new w43[]{dy8Var6});
    }

    @Override
    public i53 F(i53 i53Var) {
        if (this == i53Var) {
            return G();
        }
        if (t()) {
            return i53Var;
        }
        if (i53Var.t()) {
            return E();
        }
        return this.c.i() ? i53Var : E().a(i53Var);
    }

    public i53 G() {
        return (t() || this.c.i()) ? this : E().a(this);
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
        dy8 dy8Var = (dy8) this.b;
        dy8 dy8Var2 = (dy8) this.c;
        dy8 dy8Var3 = (dy8) i53Var.p();
        dy8 dy8Var4 = (dy8) i53Var.q();
        dy8 dy8Var5 = (dy8) this.d[0];
        dy8 dy8Var6 = (dy8) i53Var.r(0);
        int[] iArrK = py6.k();
        int[] iArrI = py6.i();
        int[] iArrI2 = py6.i();
        int[] iArrI3 = py6.i();
        boolean zH = dy8Var5.h();
        if (zH) {
            iArr = dy8Var3.g;
            iArr2 = dy8Var4.g;
        } else {
            cy8.n(dy8Var5.g, iArrI2);
            cy8.g(iArrI2, dy8Var3.g, iArrI);
            cy8.g(iArrI2, dy8Var5.g, iArrI2);
            cy8.g(iArrI2, dy8Var4.g, iArrI2);
            iArr = iArrI;
            iArr2 = iArrI2;
        }
        boolean zH2 = dy8Var6.h();
        if (zH2) {
            iArr3 = dy8Var.g;
            iArr4 = dy8Var2.g;
        } else {
            cy8.n(dy8Var6.g, iArrI3);
            cy8.g(iArrI3, dy8Var.g, iArrK);
            cy8.g(iArrI3, dy8Var6.g, iArrI3);
            cy8.g(iArrI3, dy8Var2.g, iArrI3);
            iArr3 = iArrK;
            iArr4 = iArrI3;
        }
        int[] iArrI4 = py6.i();
        cy8.q(iArr3, iArr, iArrI4);
        cy8.q(iArr4, iArr2, iArrI);
        if (py6.v(iArrI4)) {
            return py6.v(iArrI) ? E() : t43VarI.s();
        }
        cy8.n(iArrI4, iArrI2);
        int[] iArrI5 = py6.i();
        cy8.g(iArrI2, iArrI4, iArrI5);
        cy8.g(iArrI2, iArr3, iArrI2);
        cy8.i(iArrI5, iArrI5);
        py6.y(iArr4, iArrI5, iArrK);
        cy8.m(py6.b(iArrI2, iArrI2, iArrI5), iArrI5);
        dy8 dy8Var7 = new dy8(iArrI3);
        cy8.n(iArrI, dy8Var7.g);
        int[] iArr5 = dy8Var7.g;
        cy8.q(iArr5, iArrI5, iArr5);
        dy8 dy8Var8 = new dy8(iArrI5);
        cy8.q(iArrI2, dy8Var7.g, dy8Var8.g);
        cy8.h(dy8Var8.g, iArrI, iArrK);
        cy8.l(iArrK, dy8Var8.g);
        dy8 dy8Var9 = new dy8(iArrI4);
        if (!zH) {
            int[] iArr6 = dy8Var9.g;
            cy8.g(iArr6, dy8Var5.g, iArr6);
        }
        if (!zH2) {
            int[] iArr7 = dy8Var9.g;
            cy8.g(iArr7, dy8Var6.g, iArr7);
        }
        return new ey8(t43VarI, dy8Var7, dy8Var8, new w43[]{dy8Var9});
    }

    @Override
    public i53 d() {
        return new ey8(null, f(), g());
    }

    @Override
    public i53 x() {
        return t() ? this : new ey8(this.a, this.b, this.c.m(), this.d);
    }

    public ey8(t43 t43Var, w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        super(t43Var, w43Var, w43Var2, w43VarArr);
    }
}
