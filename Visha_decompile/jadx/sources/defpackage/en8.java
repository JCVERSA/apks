package defpackage;

import java.math.BigInteger;
import java.util.Enumeration;

public class en8 extends j1 {
    public BigInteger b;
    public BigInteger c;
    public BigInteger d;
    public BigInteger e;
    public BigInteger f;
    public BigInteger g;
    public BigInteger h;
    public BigInteger i;
    public BigInteger j;
    public s1 k;

    public en8(s1 s1Var) {
        this.k = null;
        Enumeration enumerationB = s1Var.B();
        g1 g1Var = (g1) enumerationB.nextElement();
        int iF = g1Var.F();
        if (iF < 0 || iF > 1) {
            throw new IllegalArgumentException("wrong version for RSA private key");
        }
        this.b = g1Var.A();
        this.c = ((g1) enumerationB.nextElement()).A();
        this.d = ((g1) enumerationB.nextElement()).A();
        this.e = ((g1) enumerationB.nextElement()).A();
        this.f = ((g1) enumerationB.nextElement()).A();
        this.g = ((g1) enumerationB.nextElement()).A();
        this.h = ((g1) enumerationB.nextElement()).A();
        this.i = ((g1) enumerationB.nextElement()).A();
        this.j = ((g1) enumerationB.nextElement()).A();
        if (enumerationB.hasMoreElements()) {
            this.k = (s1) enumerationB.nextElement();
        }
    }

    public static en8 p(Object obj) {
        if (obj instanceof en8) {
            return (en8) obj;
        }
        if (obj != null) {
            return new en8(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(10);
        y0Var.a(new g1(this.b));
        y0Var.a(new g1(q()));
        y0Var.a(new g1(u()));
        y0Var.a(new g1(t()));
        y0Var.a(new g1(r()));
        y0Var.a(new g1(s()));
        y0Var.a(new g1(n()));
        y0Var.a(new g1(o()));
        y0Var.a(new g1(m()));
        s1 s1Var = this.k;
        if (s1Var != null) {
            y0Var.a(s1Var);
        }
        return new aq1(y0Var);
    }

    public BigInteger m() {
        return this.j;
    }

    public BigInteger n() {
        return this.h;
    }

    public BigInteger o() {
        return this.i;
    }

    public BigInteger q() {
        return this.c;
    }

    public BigInteger r() {
        return this.f;
    }

    public BigInteger s() {
        return this.g;
    }

    public BigInteger t() {
        return this.e;
    }

    public BigInteger u() {
        return this.d;
    }

    public en8(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5, BigInteger bigInteger6, BigInteger bigInteger7, BigInteger bigInteger8) {
        this.k = null;
        this.b = BigInteger.valueOf(0L);
        this.c = bigInteger;
        this.d = bigInteger2;
        this.e = bigInteger3;
        this.f = bigInteger4;
        this.g = bigInteger5;
        this.h = bigInteger6;
        this.i = bigInteger7;
        this.j = bigInteger8;
    }
}
