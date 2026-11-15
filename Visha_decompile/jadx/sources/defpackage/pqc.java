package defpackage;

import java.math.BigInteger;

public class pqc extends j1 implements wqc {
    public t43 b;
    public byte[] c;
    public l1 d;

    public pqc(t43 t43Var, byte[] bArr) {
        this.d = null;
        this.b = t43Var;
        this.c = ci.f(bArr);
        o();
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(3);
        if (this.d.s(wqc.d5) || this.d.s(wqc.e5)) {
            y0Var.a(new tqc(this.b.m()).j());
            tqc tqcVar = new tqc(this.b.n());
            y0Var.a(tqcVar.j());
        }
        if (this.c != null) {
            y0Var.a(new np1(this.c));
        }
        return new aq1(y0Var);
    }

    public t43 m() {
        return this.b;
    }

    public byte[] n() {
        return ci.f(this.c);
    }

    public final void o() {
        l1 l1Var;
        if (r43.e(this.b)) {
            l1Var = wqc.d5;
        } else {
            if (!r43.c(this.b)) {
                throw new IllegalArgumentException("This type of ECCurve is not implemented");
            }
            l1Var = wqc.e5;
        }
        this.d = l1Var;
    }

    public pqc(uqc uqcVar, BigInteger bigInteger, BigInteger bigInteger2, s1 s1Var) {
        int iF;
        int iF2;
        int i;
        t43 eVar;
        this.d = null;
        l1 l1VarM = uqcVar.m();
        this.d = l1VarM;
        if (l1VarM.s(wqc.d5)) {
            eVar = new t43.f(((g1) uqcVar.o()).A(), new BigInteger(1, m1.y(s1Var.A(0)).z()), new BigInteger(1, m1.y(s1Var.A(1)).z()), bigInteger, bigInteger2);
        } else {
            if (!this.d.s(wqc.e5)) {
                throw new IllegalArgumentException("This type of ECCurve is not implemented");
            }
            s1 s1VarZ = s1.z(uqcVar.o());
            int iF3 = ((g1) s1VarZ.A(0)).F();
            l1 l1Var = (l1) s1VarZ.A(1);
            if (l1Var.s(wqc.g5)) {
                iF2 = g1.y(s1VarZ.A(2)).F();
                i = 0;
                iF = 0;
            } else {
                if (!l1Var.s(wqc.h5)) {
                    throw new IllegalArgumentException("This type of EC basis is not implemented");
                }
                s1 s1VarZ2 = s1.z(s1VarZ.A(2));
                int iF4 = g1.y(s1VarZ2.A(0)).F();
                int iF5 = g1.y(s1VarZ2.A(1)).F();
                iF = g1.y(s1VarZ2.A(2)).F();
                iF2 = iF4;
                i = iF5;
            }
            eVar = new t43.e(iF3, iF2, i, iF, new BigInteger(1, m1.y(s1Var.A(0)).z()), new BigInteger(1, m1.y(s1Var.A(1)).z()), bigInteger, bigInteger2);
        }
        this.b = eVar;
        if (s1Var.size() == 3) {
            this.c = ((np1) s1Var.A(2)).x();
        }
    }
}
