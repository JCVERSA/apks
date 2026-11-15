package defpackage;

public class s79 extends i53.c {
    public s79(t43 t43Var, w43 w43Var, w43 w43Var2) {
        super(t43Var, w43Var, w43Var2);
    }

    @Override
    public i53 E() {
        if (t()) {
            return this;
        }
        t43 t43VarI = i();
        r79 r79Var = (r79) this.c;
        if (r79Var.i()) {
            return t43VarI.s();
        }
        r79 r79Var2 = (r79) this.b;
        r79 r79Var3 = (r79) this.d[0];
        int[] iArrL = vy6.l(24);
        int[] iArrL2 = vy6.l(12);
        int[] iArrL3 = vy6.l(12);
        int[] iArrL4 = vy6.l(12);
        q79.p(r79Var.g, iArrL4, iArrL);
        int[] iArrL5 = vy6.l(12);
        q79.p(iArrL4, iArrL5, iArrL);
        boolean zH = r79Var3.h();
        int[] iArr = r79Var3.g;
        if (!zH) {
            q79.p(iArr, iArrL3, iArrL);
            iArr = iArrL3;
        }
        q79.s(r79Var2.g, iArr, iArrL2);
        q79.a(r79Var2.g, iArr, iArrL3);
        q79.i(iArrL3, iArrL2, iArrL3, iArrL);
        q79.n(vy6.c(12, iArrL3, iArrL3, iArrL3), iArrL3);
        q79.i(iArrL4, r79Var2.g, iArrL4, iArrL);
        q79.n(vy6.L(12, iArrL4, 2, 0), iArrL4);
        q79.n(vy6.M(12, iArrL5, 3, 0, iArrL2), iArrL2);
        r79 r79Var4 = new r79(iArrL5);
        q79.p(iArrL3, r79Var4.g, iArrL);
        int[] iArr2 = r79Var4.g;
        q79.s(iArr2, iArrL4, iArr2);
        int[] iArr3 = r79Var4.g;
        q79.s(iArr3, iArrL4, iArr3);
        r79 r79Var5 = new r79(iArrL4);
        q79.s(iArrL4, r79Var4.g, r79Var5.g);
        int[] iArr4 = r79Var5.g;
        q79.i(iArr4, iArrL3, iArr4, iArrL);
        int[] iArr5 = r79Var5.g;
        q79.s(iArr5, iArrL2, iArr5);
        r79 r79Var6 = new r79(iArrL3);
        q79.t(r79Var.g, r79Var6.g);
        if (!zH) {
            int[] iArr6 = r79Var6.g;
            q79.i(iArr6, r79Var3.g, iArr6, iArrL);
        }
        return new s79(t43VarI, r79Var4, r79Var5, new w43[]{r79Var6});
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
        r79 r79Var = (r79) this.b;
        r79 r79Var2 = (r79) this.c;
        r79 r79Var3 = (r79) i53Var.p();
        r79 r79Var4 = (r79) i53Var.q();
        r79 r79Var5 = (r79) this.d[0];
        r79 r79Var6 = (r79) i53Var.r(0);
        int[] iArrL = vy6.l(24);
        int[] iArrL2 = vy6.l(24);
        int[] iArrL3 = vy6.l(24);
        int i = 12;
        int[] iArrL4 = vy6.l(12);
        int[] iArrL5 = vy6.l(12);
        boolean zH = r79Var5.h();
        if (zH) {
            iArr = r79Var3.g;
            iArr2 = r79Var4.g;
        } else {
            q79.p(r79Var5.g, iArrL4, iArrL);
            q79.i(iArrL4, r79Var3.g, iArrL3, iArrL);
            q79.i(iArrL4, r79Var5.g, iArrL4, iArrL);
            q79.i(iArrL4, r79Var4.g, iArrL4, iArrL);
            iArr = iArrL3;
            iArr2 = iArrL4;
        }
        boolean zH2 = r79Var6.h();
        if (zH2) {
            iArr3 = r79Var.g;
            iArr4 = r79Var2.g;
        } else {
            q79.p(r79Var6.g, iArrL5, iArrL);
            q79.i(iArrL5, r79Var.g, iArrL2, iArrL);
            q79.i(iArrL5, r79Var6.g, iArrL5, iArrL);
            q79.i(iArrL5, r79Var2.g, iArrL5, iArrL);
            iArr3 = iArrL2;
            iArr4 = iArrL5;
            i = 12;
        }
        int[] iArrL6 = vy6.l(i);
        q79.s(iArr3, iArr, iArrL6);
        int[] iArrL7 = vy6.l(i);
        q79.s(iArr4, iArr2, iArrL7);
        if (vy6.A(i, iArrL6)) {
            return vy6.A(i, iArrL7) ? E() : t43VarI.s();
        }
        q79.p(iArrL6, iArrL4, iArrL);
        int[] iArrL8 = vy6.l(i);
        q79.i(iArrL4, iArrL6, iArrL8, iArrL);
        q79.i(iArrL4, iArr3, iArrL4, iArrL);
        q79.j(iArrL8, iArrL8);
        ry6.a(iArr4, iArrL8, iArrL2);
        q79.n(vy6.c(i, iArrL4, iArrL4, iArrL8), iArrL8);
        r79 r79Var7 = new r79(iArrL5);
        q79.p(iArrL7, r79Var7.g, iArrL);
        int[] iArr5 = r79Var7.g;
        q79.s(iArr5, iArrL8, iArr5);
        r79 r79Var8 = new r79(iArrL8);
        q79.s(iArrL4, r79Var7.g, r79Var8.g);
        ry6.a(r79Var8.g, iArrL7, iArrL3);
        q79.b(iArrL2, iArrL3, iArrL2);
        q79.m(iArrL2, r79Var8.g);
        r79 r79Var9 = new r79(iArrL6);
        if (!zH) {
            int[] iArr6 = r79Var9.g;
            q79.i(iArr6, r79Var5.g, iArr6, iArrL);
        }
        if (!zH2) {
            int[] iArr7 = r79Var9.g;
            q79.i(iArr7, r79Var6.g, iArr7, iArrL);
        }
        return new s79(t43VarI, r79Var7, r79Var8, new w43[]{r79Var9});
    }

    @Override
    public i53 d() {
        return new s79(null, f(), g());
    }

    @Override
    public i53 x() {
        return t() ? this : new s79(this.a, this.b, this.c.m(), this.d);
    }

    public s79(t43 t43Var, w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        super(t43Var, w43Var, w43Var2, w43VarArr);
    }
}
