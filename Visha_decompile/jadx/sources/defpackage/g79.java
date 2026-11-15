package defpackage;

public class g79 extends i53.c {
    public g79(t43 t43Var, w43 w43Var, w43 w43Var2) {
        super(t43Var, w43Var, w43Var2);
    }

    @Override
    public i53 E() {
        if (t()) {
            return this;
        }
        t43 t43VarI = i();
        f79 f79Var = (f79) this.c;
        if (f79Var.i()) {
            return t43VarI.s();
        }
        f79 f79Var2 = (f79) this.b;
        f79 f79Var3 = (f79) this.d[0];
        int[] iArrE = oy6.e();
        int[] iArrE2 = oy6.e();
        int[] iArrE3 = oy6.e();
        e79.n(f79Var.g, iArrE3);
        int[] iArrE4 = oy6.e();
        e79.n(iArrE3, iArrE4);
        boolean zH = f79Var3.h();
        int[] iArr = f79Var3.g;
        if (!zH) {
            e79.n(iArr, iArrE2);
            iArr = iArrE2;
        }
        e79.q(f79Var2.g, iArr, iArrE);
        e79.a(f79Var2.g, iArr, iArrE2);
        e79.g(iArrE2, iArrE, iArrE2);
        e79.m(oy6.b(iArrE2, iArrE2, iArrE2), iArrE2);
        e79.g(iArrE3, f79Var2.g, iArrE3);
        e79.m(vy6.L(7, iArrE3, 2, 0), iArrE3);
        e79.m(vy6.M(7, iArrE4, 3, 0, iArrE), iArrE);
        f79 f79Var4 = new f79(iArrE4);
        e79.n(iArrE2, f79Var4.g);
        int[] iArr2 = f79Var4.g;
        e79.q(iArr2, iArrE3, iArr2);
        int[] iArr3 = f79Var4.g;
        e79.q(iArr3, iArrE3, iArr3);
        f79 f79Var5 = new f79(iArrE3);
        e79.q(iArrE3, f79Var4.g, f79Var5.g);
        int[] iArr4 = f79Var5.g;
        e79.g(iArr4, iArrE2, iArr4);
        int[] iArr5 = f79Var5.g;
        e79.q(iArr5, iArrE, iArr5);
        f79 f79Var6 = new f79(iArrE2);
        e79.r(f79Var.g, f79Var6.g);
        if (!zH) {
            int[] iArr6 = f79Var6.g;
            e79.g(iArr6, f79Var3.g, iArr6);
        }
        return new g79(t43VarI, f79Var4, f79Var5, new w43[]{f79Var6});
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
        f79 f79Var = (f79) this.b;
        f79 f79Var2 = (f79) this.c;
        f79 f79Var3 = (f79) i53Var.p();
        f79 f79Var4 = (f79) i53Var.q();
        f79 f79Var5 = (f79) this.d[0];
        f79 f79Var6 = (f79) i53Var.r(0);
        int[] iArrF = oy6.f();
        int[] iArrE = oy6.e();
        int[] iArrE2 = oy6.e();
        int[] iArrE3 = oy6.e();
        boolean zH = f79Var5.h();
        if (zH) {
            iArr = f79Var3.g;
            iArr2 = f79Var4.g;
        } else {
            e79.n(f79Var5.g, iArrE2);
            e79.g(iArrE2, f79Var3.g, iArrE);
            e79.g(iArrE2, f79Var5.g, iArrE2);
            e79.g(iArrE2, f79Var4.g, iArrE2);
            iArr = iArrE;
            iArr2 = iArrE2;
        }
        boolean zH2 = f79Var6.h();
        if (zH2) {
            iArr3 = f79Var.g;
            iArr4 = f79Var2.g;
        } else {
            e79.n(f79Var6.g, iArrE3);
            e79.g(iArrE3, f79Var.g, iArrF);
            e79.g(iArrE3, f79Var6.g, iArrE3);
            e79.g(iArrE3, f79Var2.g, iArrE3);
            iArr3 = iArrF;
            iArr4 = iArrE3;
        }
        int[] iArrE4 = oy6.e();
        e79.q(iArr3, iArr, iArrE4);
        e79.q(iArr4, iArr2, iArrE);
        if (oy6.l(iArrE4)) {
            return oy6.l(iArrE) ? E() : t43VarI.s();
        }
        e79.n(iArrE4, iArrE2);
        int[] iArrE5 = oy6.e();
        e79.g(iArrE2, iArrE4, iArrE5);
        e79.g(iArrE2, iArr3, iArrE2);
        e79.i(iArrE5, iArrE5);
        oy6.m(iArr4, iArrE5, iArrF);
        e79.m(oy6.b(iArrE2, iArrE2, iArrE5), iArrE5);
        f79 f79Var7 = new f79(iArrE3);
        e79.n(iArrE, f79Var7.g);
        int[] iArr5 = f79Var7.g;
        e79.q(iArr5, iArrE5, iArr5);
        f79 f79Var8 = new f79(iArrE5);
        e79.q(iArrE2, f79Var7.g, f79Var8.g);
        e79.h(f79Var8.g, iArrE, iArrF);
        e79.l(iArrF, f79Var8.g);
        f79 f79Var9 = new f79(iArrE4);
        if (!zH) {
            int[] iArr6 = f79Var9.g;
            e79.g(iArr6, f79Var5.g, iArr6);
        }
        if (!zH2) {
            int[] iArr7 = f79Var9.g;
            e79.g(iArr7, f79Var6.g, iArr7);
        }
        return new g79(t43VarI, f79Var7, f79Var8, new w43[]{f79Var9});
    }

    @Override
    public i53 d() {
        return new g79(null, f(), g());
    }

    @Override
    public i53 x() {
        return t() ? this : new g79(this.a, this.b, this.c.m(), this.d);
    }

    public g79(t43 t43Var, w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        super(t43Var, w43Var, w43Var2, w43VarArr);
    }
}
