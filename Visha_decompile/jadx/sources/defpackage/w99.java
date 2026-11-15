package defpackage;

public class w99 extends i53.b {
    public w99(t43 t43Var, w43 w43Var, w43 w43Var2) {
        super(t43Var, w43Var, w43Var2);
    }

    @Override
    public i53 E() {
        if (t()) {
            return this;
        }
        t43 t43VarI = i();
        w43 w43Var = this.b;
        if (w43Var.i()) {
            return t43VarI.s();
        }
        w43 w43Var2 = this.c;
        w43 w43VarO = this.d[0];
        boolean zH = w43VarO.h();
        w43 w43VarO2 = zH ? w43VarO : w43VarO.o();
        w43 w43VarA = zH ? w43Var2.o().a(w43Var2) : w43Var2.a(w43VarO).j(w43Var2);
        if (w43VarA.i()) {
            return new w99(t43VarI, w43VarA, t43VarI.n());
        }
        w43 w43VarO3 = w43VarA.o();
        w43 w43VarJ = zH ? w43VarA : w43VarA.j(w43VarO2);
        w43 w43VarO4 = w43Var2.a(w43Var).o();
        if (!zH) {
            w43VarO = w43VarO2.o();
        }
        return new w99(t43VarI, w43VarO3, w43VarO4.a(w43VarA).a(w43VarO2).j(w43VarO4).a(w43VarO).a(w43VarO3).a(w43VarJ), new w43[]{w43VarJ});
    }

    @Override
    public i53 F(i53 i53Var) {
        if (t()) {
            return i53Var;
        }
        if (i53Var.t()) {
            return E();
        }
        t43 t43VarI = i();
        w43 w43Var = this.b;
        if (w43Var.i()) {
            return i53Var;
        }
        w43 w43VarN = i53Var.n();
        w43 w43VarR = i53Var.r(0);
        if (w43VarN.i() || !w43VarR.h()) {
            return E().a(i53Var);
        }
        w43 w43Var2 = this.c;
        w43 w43Var3 = this.d[0];
        w43 w43VarO = i53Var.o();
        w43 w43VarO2 = w43Var.o();
        w43 w43VarO3 = w43Var2.o();
        w43 w43VarO4 = w43Var3.o();
        w43 w43VarA = w43VarO3.a(w43Var2.j(w43Var3));
        w43 w43VarB = w43VarO.b();
        w43 w43VarL = w43VarB.j(w43VarO4).a(w43VarO3).l(w43VarA, w43VarO2, w43VarO4);
        w43 w43VarJ = w43VarN.j(w43VarO4);
        w43 w43VarO5 = w43VarJ.a(w43VarA).o();
        if (w43VarO5.i()) {
            return w43VarL.i() ? i53Var.E() : t43VarI.s();
        }
        if (w43VarL.i()) {
            return new w99(t43VarI, w43VarL, t43VarI.n());
        }
        w43 w43VarJ2 = w43VarL.o().j(w43VarJ);
        w43 w43VarJ3 = w43VarL.j(w43VarO5).j(w43VarO4);
        return new w99(t43VarI, w43VarJ2, w43VarL.a(w43VarO5).o().l(w43VarA, w43VarB, w43VarJ3), new w43[]{w43VarJ3});
    }

    @Override
    public i53 a(i53 i53Var) {
        long[] jArr;
        long[] jArr2;
        long[] jArr3;
        long[] jArr4;
        u99 u99Var;
        u99 u99Var2;
        u99 u99Var3;
        if (t()) {
            return i53Var;
        }
        if (i53Var.t()) {
            return this;
        }
        t43 t43VarI = i();
        u99 u99Var4 = (u99) this.b;
        u99 u99Var5 = (u99) i53Var.n();
        if (u99Var4.i()) {
            return u99Var5.i() ? t43VarI.s() : i53Var.a(this);
        }
        u99 u99Var6 = (u99) this.c;
        u99 u99Var7 = (u99) this.d[0];
        u99 u99Var8 = (u99) i53Var.o();
        u99 u99Var9 = (u99) i53Var.r(0);
        long[] jArrC = uy6.c();
        long[] jArrC2 = uy6.c();
        long[] jArrC3 = uy6.c();
        long[] jArrC4 = uy6.c();
        long[] jArrS = u99Var7.h() ? null : t99.s(u99Var7.g);
        if (jArrS == null) {
            jArr = u99Var5.g;
            jArr2 = u99Var8.g;
        } else {
            t99.q(u99Var5.g, jArrS, jArrC2);
            t99.q(u99Var8.g, jArrS, jArrC4);
            jArr = jArrC2;
            jArr2 = jArrC4;
        }
        long[] jArrS2 = u99Var9.h() ? null : t99.s(u99Var9.g);
        if (jArrS2 == null) {
            jArr3 = u99Var4.g;
            jArr4 = u99Var6.g;
        } else {
            t99.q(u99Var4.g, jArrS2, jArrC);
            t99.q(u99Var6.g, jArrS2, jArrC3);
            jArr3 = jArrC;
            jArr4 = jArrC3;
        }
        t99.b(jArr4, jArr2, jArrC3);
        t99.b(jArr3, jArr, jArrC4);
        if (uy6.g(jArrC4)) {
            return uy6.g(jArrC3) ? E() : t43VarI.s();
        }
        if (u99Var5.i()) {
            i53 i53VarY = y();
            u99 u99Var10 = (u99) i53VarY.p();
            w43 w43VarQ = i53VarY.q();
            w43 w43VarD = w43VarQ.a(u99Var8).d(u99Var10);
            u99Var = (u99) w43VarD.o().a(w43VarD).a(u99Var10);
            if (u99Var.i()) {
                return new w99(t43VarI, u99Var, t43VarI.n());
            }
            u99Var2 = (u99) w43VarD.j(u99Var10.a(u99Var)).a(u99Var).a(w43VarQ).d(u99Var).a(u99Var);
            u99Var3 = (u99) t43VarI.l(s43.b);
        } else {
            t99.w(jArrC4, jArrC4);
            long[] jArrS3 = t99.s(jArrC3);
            t99.q(jArr3, jArrS3, jArrC);
            t99.q(jArr, jArrS3, jArrC2);
            u99Var = new u99(jArrC);
            t99.o(jArrC, jArrC2, u99Var.g);
            if (u99Var.i()) {
                return new w99(t43VarI, u99Var, t43VarI.n());
            }
            u99 u99Var11 = new u99(jArrC3);
            t99.q(jArrC4, jArrS3, u99Var11.g);
            if (jArrS2 != null) {
                long[] jArr5 = u99Var11.g;
                t99.q(jArr5, jArrS2, jArr5);
            }
            long[] jArrD = uy6.d();
            t99.b(jArrC2, jArrC4, jArrC4);
            t99.x(jArrC4, jArrD);
            t99.b(u99Var6.g, u99Var7.g, jArrC4);
            t99.p(jArrC4, u99Var11.g, jArrD);
            u99 u99Var12 = new u99(jArrC4);
            t99.t(jArrD, u99Var12.g);
            if (jArrS != null) {
                long[] jArr6 = u99Var11.g;
                t99.q(jArr6, jArrS, jArr6);
            }
            u99Var2 = u99Var12;
            u99Var3 = u99Var11;
        }
        return new w99(t43VarI, u99Var, u99Var2, new w43[]{u99Var3});
    }

    @Override
    public i53 d() {
        return new w99(null, f(), g());
    }

    @Override
    public boolean h() {
        w43 w43VarN = n();
        return (w43VarN.i() || o().s() == w43VarN.s()) ? false : true;
    }

    @Override
    public w43 q() {
        w43 w43Var = this.b;
        w43 w43Var2 = this.c;
        if (t() || w43Var.i()) {
            return w43Var2;
        }
        w43 w43VarJ = w43Var2.a(w43Var).j(w43Var);
        w43 w43Var3 = this.d[0];
        return !w43Var3.h() ? w43VarJ.d(w43Var3) : w43VarJ;
    }

    @Override
    public i53 x() {
        if (t()) {
            return this;
        }
        w43 w43Var = this.b;
        if (w43Var.i()) {
            return this;
        }
        w43 w43Var2 = this.c;
        w43 w43Var3 = this.d[0];
        return new w99(this.a, w43Var, w43Var2.a(w43Var3), new w43[]{w43Var3});
    }

    public w99(t43 t43Var, w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        super(t43Var, w43Var, w43Var2, w43VarArr);
    }
}
