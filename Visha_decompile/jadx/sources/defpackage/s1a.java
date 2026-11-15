package defpackage;

import java.util.Enumeration;

public class s1a extends j1 {
    public oa b;
    public s0 c;

    public s1a(s1 s1Var) {
        if (s1Var.size() == 2) {
            Enumeration enumerationB = s1Var.B();
            this.b = oa.o(enumerationB.nextElement());
            this.c = s0.z(enumerationB.nextElement());
        } else {
            throw new IllegalArgumentException("Bad sequence size: " + s1Var.size());
        }
    }

    public static s1a n(Object obj) {
        if (obj instanceof s1a) {
            return (s1a) obj;
        }
        if (obj != null) {
            return new s1a(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(2);
        y0Var.a(this.b);
        y0Var.a(this.c);
        return new aq1(y0Var);
    }

    public oa m() {
        return this.b;
    }

    public s0 o() {
        return this.c;
    }

    public p1 p() {
        return p1.t(this.c.A());
    }

    public s1a(oa oaVar, s0 s0Var) {
        this.c = s0Var;
        this.b = oaVar;
    }

    public s1a(oa oaVar, x0 x0Var) {
        this.c = new np1(x0Var);
        this.b = oaVar;
    }

    public s1a(oa oaVar, byte[] bArr) {
        this.c = new np1(bArr);
        this.b = oaVar;
    }
}
