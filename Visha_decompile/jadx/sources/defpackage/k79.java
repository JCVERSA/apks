package defpackage;

public class k79 extends i53.c {
    public k79(t43 t43Var, w43 w43Var, w43 w43Var2) {
        super(t43Var, w43Var, w43Var2);
    }

    @Override
    public i53 E() {
        if (t()) {
            return this;
        }
        t43 t43VarI = i();
        j79 j79Var = (j79) this.c;
        if (j79Var.i()) {
            return t43VarI.s();
        }
        j79 j79Var2 = (j79) this.b;
        j79 j79Var3 = (j79) this.d[0];
        int[] iArrK = py6.k();
        int[] iArrI = py6.i();
        i79.o(j79Var.g, iArrI, iArrK);
        int[] iArrI2 = py6.i();
        i79.o(iArrI, iArrI2, iArrK);
        int[] iArrI3 = py6.i();
        i79.o(j79Var2.g, iArrI3, iArrK);
        i79.m(py6.b(iArrI3, iArrI3, iArrI3), iArrI3);
        i79.g(iArrI, j79Var2.g, iArrI, iArrK);
        i79.m(vy6.L(8, iArrI, 2, 0), iArrI);
        int[] iArrI4 = py6.i();
        i79.m(vy6.M(8, iArrI2, 3, 0, iArrI4), iArrI4);
        j79 j79Var4 = new j79(iArrI2);
        i79.o(iArrI3, j79Var4.g, iArrK);
        int[] iArr = j79Var4.g;
        i79.q(iArr, iArrI, iArr);
        int[] iArr2 = j79Var4.g;
        i79.q(iArr2, iArrI, iArr2);
        j79 j79Var5 = new j79(iArrI);
        i79.q(iArrI, j79Var4.g, j79Var5.g);
        int[] iArr3 = j79Var5.g;
        i79.g(iArr3, iArrI3, iArr3, iArrK);
        int[] iArr4 = j79Var5.g;
        i79.q(iArr4, iArrI4, iArr4);
        j79 j79Var6 = new j79(iArrI3);
        i79.r(j79Var.g, j79Var6.g);
        if (!j79Var3.h()) {
            int[] iArr5 = j79Var6.g;
            i79.g(iArr5, j79Var3.g, iArr5, iArrK);
        }
        return new k79(t43VarI, j79Var4, j79Var5, new w43[]{j79Var6});
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
        j79 j79Var = (j79) this.b;
        j79 j79Var2 = (j79) this.c;
        j79 j79Var3 = (j79) i53Var.p();
        j79 j79Var4 = (j79) i53Var.q();
        j79 j79Var5 = (j79) this.d[0];
        j79 j79Var6 = (j79) i53Var.r(0);
        int[] iArrK = py6.k();
        int[] iArrK2 = py6.k();
        int[] iArrI = py6.i();
        int[] iArrI2 = py6.i();
        int[] iArrI3 = py6.i();
        boolean zH = j79Var5.h();
        if (zH) {
            iArr = j79Var3.g;
            iArr2 = j79Var4.g;
        } else {
            i79.o(j79Var5.g, iArrI2, iArrK);
            i79.g(iArrI2, j79Var3.g, iArrI, iArrK);
            i79.g(iArrI2, j79Var5.g, iArrI2, iArrK);
            i79.g(iArrI2, j79Var4.g, iArrI2, iArrK);
            iArr = iArrI;
            iArr2 = iArrI2;
        }
        boolean zH2 = j79Var6.h();
        if (zH2) {
            iArr3 = j79Var.g;
            iArr4 = j79Var2.g;
        } else {
            i79.o(j79Var6.g, iArrI3, iArrK);
            i79.g(iArrI3, j79Var.g, iArrK2, iArrK);
            i79.g(iArrI3, j79Var6.g, iArrI3, iArrK);
            i79.g(iArrI3, j79Var2.g, iArrI3, iArrK);
            iArr3 = iArrK2;
            iArr4 = iArrI3;
        }
        int[] iArrI4 = py6.i();
        i79.q(iArr3, iArr, iArrI4);
        i79.q(iArr4, iArr2, iArrI);
        if (py6.v(iArrI4)) {
            return py6.v(iArrI) ? E() : t43VarI.s();
        }
        i79.o(iArrI4, iArrI2, iArrK);
        int[] iArrI5 = py6.i();
        i79.g(iArrI2, iArrI4, iArrI5, iArrK);
        i79.g(iArrI2, iArr3, iArrI2, iArrK);
        i79.i(iArrI5, iArrI5);
        py6.y(iArr4, iArrI5, iArrK2);
        i79.m(py6.b(iArrI2, iArrI2, iArrI5), iArrI5);
        j79 j79Var7 = new j79(iArrI3);
        i79.o(iArrI, j79Var7.g, iArrK);
        int[] iArr5 = j79Var7.g;
        i79.q(iArr5, iArrI5, iArr5);
        j79 j79Var8 = new j79(iArrI5);
        i79.q(iArrI2, j79Var7.g, j79Var8.g);
        i79.h(j79Var8.g, iArrI, iArrK2);
        i79.l(iArrK2, j79Var8.g);
        j79 j79Var9 = new j79(iArrI4);
        if (!zH) {
            int[] iArr6 = j79Var9.g;
            i79.g(iArr6, j79Var5.g, iArr6, iArrK);
        }
        if (!zH2) {
            int[] iArr7 = j79Var9.g;
            i79.g(iArr7, j79Var6.g, iArr7, iArrK);
        }
        return new k79(t43VarI, j79Var7, j79Var8, new w43[]{j79Var9});
    }

    @Override
    public i53 d() {
        return new k79(null, f(), g());
    }

    @Override
    public i53 x() {
        return t() ? this : new k79(this.a, this.b, this.c.m(), this.d);
    }

    public k79(t43 t43Var, w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        super(t43Var, w43Var, w43Var2, w43VarArr);
    }
}
