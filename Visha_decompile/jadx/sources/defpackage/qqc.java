package defpackage;

import java.math.BigInteger;

public class qqc extends j1 implements wqc {
    public static final BigInteger h = BigInteger.valueOf(1);
    public uqc b;
    public t43 c;
    public sqc d;
    public BigInteger e;
    public BigInteger f;
    public byte[] g;

    public qqc(s1 s1Var) {
        if (!(s1Var.A(0) instanceof g1) || !((g1) s1Var.A(0)).B(1)) {
            throw new IllegalArgumentException("bad version in X9ECParameters");
        }
        this.e = ((g1) s1Var.A(4)).A();
        if (s1Var.size() == 6) {
            this.f = ((g1) s1Var.A(5)).A();
        }
        pqc pqcVar = new pqc(uqc.n(s1Var.A(1)), this.e, this.f, s1.z(s1Var.A(2)));
        this.c = pqcVar.m();
        x0 x0VarA = s1Var.A(3);
        if (x0VarA instanceof sqc) {
            this.d = (sqc) x0VarA;
        } else {
            this.d = new sqc(this.c, (m1) x0VarA);
        }
        this.g = pqcVar.n();
    }

    public static qqc p(Object obj) {
        if (obj instanceof qqc) {
            return (qqc) obj;
        }
        if (obj != null) {
            return new qqc(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(6);
        y0Var.a(new g1(h));
        y0Var.a(this.b);
        y0Var.a(new pqc(this.c, this.g));
        y0Var.a(this.d);
        y0Var.a(new g1(this.e));
        if (this.f != null) {
            y0Var.a(new g1(this.f));
        }
        return new aq1(y0Var);
    }

    public t43 m() {
        return this.c;
    }

    public i53 n() {
        return this.d.m();
    }

    public BigInteger o() {
        return this.f;
    }

    public BigInteger q() {
        return this.e;
    }

    public byte[] r() {
        return ci.f(this.g);
    }

    public qqc(t43 t43Var, sqc sqcVar, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        uqc uqcVar;
        this.c = t43Var;
        this.d = sqcVar;
        this.e = bigInteger;
        this.f = bigInteger2;
        this.g = ci.f(bArr);
        if (r43.e(t43Var)) {
            uqcVar = new uqc(t43Var.q().b());
        } else {
            if (!r43.c(t43Var)) {
                throw new IllegalArgumentException("'curve' is of an unsupported type");
            }
            int[] iArrA = ((sc8) t43Var.q()).c().a();
            if (iArrA.length == 3) {
                uqcVar = new uqc(iArrA[2], iArrA[1]);
            } else {
                if (iArrA.length != 5) {
                    throw new IllegalArgumentException("Only trinomial and pentomial curves are supported");
                }
                uqcVar = new uqc(iArrA[4], iArrA[1], iArrA[2], iArrA[3]);
            }
        }
        this.b = uqcVar;
    }
}
