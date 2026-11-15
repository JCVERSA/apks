package defpackage;

public class i89 extends i53.b {
    public i89(t43 t43Var, w43 w43Var, w43 w43Var2) {
        super(t43Var, w43Var, w43Var2);
    }

    @Override
    public i53 E() {
        if (t()) {
            return this;
        }
        t43 t43VarI = i();
        w43 w43VarJ = this.b;
        if (w43VarJ.i()) {
            return t43VarI.s();
        }
        w43 w43Var = this.c;
        w43 w43Var2 = this.d[0];
        boolean zH = w43Var2.h();
        w43 w43VarJ2 = zH ? w43Var : w43Var.j(w43Var2);
        w43 w43VarO = zH ? w43Var2 : w43Var2.o();
        w43 w43VarM = t43VarI.m();
        if (!zH) {
            w43VarM = w43VarM.j(w43VarO);
        }
        w43 w43VarA = w43Var.o().a(w43VarJ2).a(w43VarM);
        if (w43VarA.i()) {
            return new i89(t43VarI, w43VarA, t43VarI.n().n());
        }
        w43 w43VarO2 = w43VarA.o();
        w43 w43VarJ3 = zH ? w43VarA : w43VarA.j(w43VarO);
        if (!zH) {
            w43VarJ = w43VarJ.j(w43Var2);
        }
        return new i89(t43VarI, w43VarO2, w43VarJ.p(w43VarA, w43VarJ2).a(w43VarO2).a(w43VarJ3), new w43[]{w43VarJ3});
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
        w43 w43VarA = t43VarI.m().j(w43VarO4).a(w43VarO3).a(w43Var2.j(w43Var3));
        w43 w43VarB = w43VarO.b();
        w43 w43VarL = t43VarI.m().a(w43VarB).j(w43VarO4).a(w43VarO3).l(w43VarA, w43VarO2, w43VarO4);
        w43 w43VarJ = w43VarN.j(w43VarO4);
        w43 w43VarO5 = w43VarJ.a(w43VarA).o();
        if (w43VarO5.i()) {
            return w43VarL.i() ? i53Var.E() : t43VarI.s();
        }
        if (w43VarL.i()) {
            return new i89(t43VarI, w43VarL, t43VarI.n().n());
        }
        w43 w43VarJ2 = w43VarL.o().j(w43VarJ);
        w43 w43VarJ3 = w43VarL.j(w43VarO5).j(w43VarO4);
        return new i89(t43VarI, w43VarJ2, w43VarL.a(w43VarO5).o().l(w43VarA, w43VarB, w43VarJ3), new w43[]{w43VarJ3});
    }

    @Override
    public i53 a(i53 i53Var) {
        w43 w43VarJ;
        w43 w43VarJ2;
        w43 w43VarJ3;
        w43 w43VarJ4;
        w43 w43VarP;
        w43 w43VarA;
        if (t()) {
            return i53Var;
        }
        if (i53Var.t()) {
            return this;
        }
        t43 t43VarI = i();
        w43 w43VarJ5 = this.b;
        w43 w43VarN = i53Var.n();
        if (w43VarJ5.i()) {
            return w43VarN.i() ? t43VarI.s() : i53Var.a(this);
        }
        w43 w43Var = this.c;
        w43 w43Var2 = this.d[0];
        w43 w43VarO = i53Var.o();
        w43 w43VarR = i53Var.r(0);
        boolean zH = w43Var2.h();
        if (zH) {
            w43VarJ = w43VarN;
            w43VarJ2 = w43VarO;
        } else {
            w43VarJ = w43VarN.j(w43Var2);
            w43VarJ2 = w43VarO.j(w43Var2);
        }
        boolean zH2 = w43VarR.h();
        if (zH2) {
            w43VarJ3 = w43Var;
        } else {
            w43VarJ5 = w43VarJ5.j(w43VarR);
            w43VarJ3 = w43Var.j(w43VarR);
        }
        w43 w43VarA2 = w43VarJ3.a(w43VarJ2);
        w43 w43VarA3 = w43VarJ5.a(w43VarJ);
        if (w43VarA3.i()) {
            return w43VarA2.i() ? E() : t43VarI.s();
        }
        if (w43VarN.i()) {
            i53 i53VarY = y();
            w43 w43VarP2 = i53VarY.p();
            w43 w43VarQ = i53VarY.q();
            w43 w43VarD = w43VarQ.a(w43VarO).d(w43VarP2);
            w43VarA = w43VarD.o().a(w43VarD).a(w43VarP2).a(t43VarI.m());
            if (w43VarA.i()) {
                return new i89(t43VarI, w43VarA, t43VarI.n().n());
            }
            w43VarP = w43VarD.j(w43VarP2.a(w43VarA)).a(w43VarA).a(w43VarQ).d(w43VarA).a(w43VarA);
            w43VarJ4 = t43VarI.l(s43.b);
        } else {
            w43 w43VarO2 = w43VarA3.o();
            w43 w43VarJ6 = w43VarA2.j(w43VarJ5);
            w43 w43VarJ7 = w43VarA2.j(w43VarJ);
            w43 w43VarJ8 = w43VarJ6.j(w43VarJ7);
            if (w43VarJ8.i()) {
                return new i89(t43VarI, w43VarJ8, t43VarI.n().n());
            }
            w43 w43VarJ9 = w43VarA2.j(w43VarO2);
            w43VarJ4 = !zH2 ? w43VarJ9.j(w43VarR) : w43VarJ9;
            w43VarP = w43VarJ7.a(w43VarO2).p(w43VarJ4, w43Var.a(w43Var2));
            if (!zH) {
                w43VarJ4 = w43VarJ4.j(w43Var2);
            }
            w43VarA = w43VarJ8;
        }
        return new i89(t43VarI, w43VarA, w43VarP, new w43[]{w43VarJ4});
    }

    @Override
    public i53 d() {
        return new i89(null, f(), g());
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
        return new i89(this.a, w43Var, w43Var2.a(w43Var3), new w43[]{w43Var3});
    }

    public i89(t43 t43Var, w43 w43Var, w43 w43Var2, w43[] w43VarArr) {
        super(t43Var, w43Var, w43Var2, w43VarArr);
    }
}
