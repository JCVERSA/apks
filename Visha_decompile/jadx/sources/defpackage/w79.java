package defpackage;

public class w79 extends i53.c {
    public w79(t43 t43Var, w43 w43Var, w43 w43Var2) {
        super(t43Var, w43Var, w43Var2);
    }

    @Override
    public i53 E() {
        if (t()) {
            return this;
        }
        t43 t43VarI = i();
        v79 v79Var = (v79) this.c;
        if (v79Var.i()) {
            return t43VarI.s();
        }
        v79 v79Var2 = (v79) this.b;
        v79 v79Var3 = (v79) this.d[0];
        int[] iArrL = vy6.l(33);
        int[] iArrL2 = vy6.l(17);
        int[] iArrL3 = vy6.l(17);
        int[] iArrL4 = vy6.l(17);
        u79.p(v79Var.g, iArrL4, iArrL);
        int[] iArrL5 = vy6.l(17);
        u79.p(iArrL4, iArrL5, iArrL);
        boolean zH = v79Var3.h();
        int[] iArr = v79Var3.g;
        if (!zH) {
            u79.p(iArr, iArrL3, iArrL);
            iArr = iArrL3;
        }
        u79.r(v79Var2.g, iArr, iArrL2);
        u79.a(v79Var2.g, iArr, iArrL3);
        u79.i(iArrL3, iArrL2, iArrL3, iArrL);
        vy6.c(17, iArrL3, iArrL3, iArrL3);
        u79.n(iArrL3);
        u79.i(iArrL4, v79Var2.g, iArrL4, iArrL);
        vy6.L(17, iArrL4, 2, 0);
        u79.n(iArrL4);
        vy6.M(17, iArrL5, 3, 0, iArrL2);
        u79.n(iArrL2);
        v79 v79Var4 = new v79(iArrL5);
        u79.p(iArrL3, v79Var4.g, iArrL);
        int[] iArr2 = v79Var4.g;
        u79.r(iArr2, iArrL4, iArr2);
        int[] iArr3 = v79Var4.g;
        u79.r(iArr3, iArrL4, iArr3);
        v79 v79Var5 = new v79(iArrL4);
        u79.r(iArrL4, v79Var4.g, v79Var5.g);
        int[] iArr4 = v79Var5.g;
        u79.i(iArr4, iArrL3, iArr4, iArrL);
        int[] iArr5 = v79Var5.g;
        u79.r(iArr5, iArrL2, iArr5);
        v79 v79Var6 = new v79(iArrL3);
        u79.s(v79Var.g, v79Var6.g);
        if (!zH) {
            int[] iArr6 = v79Var6.g;
            u79.i(iArr6, v79Var3.g, iArr6, iArrL);
        }
        return new w79(t43VarI, v79Var4, v79Var5, new w43[]{v79Var6});
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
        v79 v79Var = (v79) this.b;
        v79 v79Var2 = (v79) this.c;
        v79 v79Var3 = (v79) i53Var.p();
        v79 v79Var4 = (v79) i53Var.q();
        v79 v79Var5 = (v79) this.d[0];
        v79 v79Var6 = (v79) i53Var.r(0);
        int[] iArrL = vy6.l(33);
        int i = 17;
        int[] iArrL2 = vy6.l(17);
        int[] iArrL3 = vy6.l(17);
        int[] iArrL4 = vy6.l(17);
        int[] iArrL5 = vy6.l(17);
        boolean zH = v79Var5.h();
        if (zH) {
            iArr = v79Var3.g;
            iArr2 = v79Var4.g;
        } else {
            u79.p(v79Var5.g, iArrL4, iArrL);
            u79.i(iArrL4, v79Var3.g, iArrL3, iArrL);
            u79.i(iArrL4, v79Var5.g, iArrL4, iArrL);
            u79.i(iArrL4, v79Var4.g, iArrL4, iArrL);
            iArr = iArrL3;
            iArr2 = iArrL4;
        }
        boolean zH2 = v79Var6.h();
        if (zH2) {
            iArr3 = v79Var.g;
            iArr4 = v79Var2.g;
        } else {
            u79.p(v79Var6.g, iArrL5, iArrL);
            u79.i(iArrL5, v79Var.g, iArrL2, iArrL);
            u79.i(iArrL5, v79Var6.g, iArrL5, iArrL);
            u79.i(iArrL5, v79Var2.g, iArrL5, iArrL);
            iArr3 = iArrL2;
            iArr4 = iArrL5;
            i = 17;
        }
        int[] iArrL6 = vy6.l(i);
        u79.r(iArr3, iArr, iArrL6);
        u79.r(iArr4, iArr2, iArrL3);
        if (vy6.A(i, iArrL6)) {
            return vy6.A(i, iArrL3) ? E() : t43VarI.s();
        }
        u79.p(iArrL6, iArrL4, iArrL);
        int[] iArrL7 = vy6.l(i);
        u79.i(iArrL4, iArrL6, iArrL7, iArrL);
        u79.i(iArrL4, iArr3, iArrL4, iArrL);
        u79.i(iArr4, iArrL7, iArrL2, iArrL);
        v79 v79Var7 = new v79(iArrL5);
        u79.p(iArrL3, v79Var7.g, iArrL);
        int[] iArr5 = v79Var7.g;
        u79.a(iArr5, iArrL7, iArr5);
        int[] iArr6 = v79Var7.g;
        u79.r(iArr6, iArrL4, iArr6);
        int[] iArr7 = v79Var7.g;
        u79.r(iArr7, iArrL4, iArr7);
        v79 v79Var8 = new v79(iArrL7);
        u79.r(iArrL4, v79Var7.g, v79Var8.g);
        u79.i(v79Var8.g, iArrL3, iArrL3, iArrL);
        u79.r(iArrL3, iArrL2, v79Var8.g);
        v79 v79Var9 = new v79(iArrL6);
        if (!zH) {
            int[] iArr8 = v79Var9.g;
            u79.i(iArr8, v79Var5.g, iArr8, iArrL);
        }
        if (!zH2) {
            int[] iArr9 = v79Var9.g;
            u79.i(iArr9, v79Var6.g, iArr9, iArrL);
        }
        return new w79(t43VarI, v79Var7, v79Var8, new w43[]{v79Var9});
    }

    @Override
    public i53 d() {
        return new w79(null, f(), g());
    }

    @Override
    public i53 x() {
        return t() ? this : new w79(this.a, this.b, this.c.m(), this.d);
    }

    public w79(t43 t43Var, w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        super(t43Var, w43Var, w43Var2, w43VarArr);
    }
}
