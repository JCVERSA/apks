package defpackage;

public class pa4 extends j1 {
    public l1 b;
    public l1 c;
    public l1 d;

    public pa4(l1 l1Var, l1 l1Var2) {
        this.b = l1Var;
        this.c = l1Var2;
        this.d = null;
    }

    public static pa4 o(Object obj) {
        if (obj instanceof pa4) {
            return (pa4) obj;
        }
        if (obj != null) {
            return new pa4(s1.z(obj));
        }
        return null;
    }

    @Override
    public p1 j() {
        y0 y0Var = new y0(3);
        y0Var.a(this.b);
        l1 l1Var = this.c;
        if (l1Var != null) {
            y0Var.a(l1Var);
        }
        l1 l1Var2 = this.d;
        if (l1Var2 != null) {
            y0Var.a(l1Var2);
        }
        return new aq1(y0Var);
    }

    public l1 m() {
        return this.c;
    }

    public l1 n() {
        return this.d;
    }

    public l1 p() {
        return this.b;
    }

    public pa4(l1 l1Var, l1 l1Var2, l1 l1Var3) {
        this.b = l1Var;
        this.c = l1Var2;
        this.d = l1Var3;
    }

    /* JADX WARN: Code duplicated, block: B:6:0x001d  */
    public pa4(s1 s1Var) {
        l1 l1VarD = l1.D(s1Var.A(0));
        this.b = l1VarD;
        if (l1VarD.s(wv8.o)) {
            if (s1Var.size() > 1) {
                this.c = l1.D(s1Var.A(1));
            }
        } else if (this.b.s(wv8.p) || this.b.s(wv8.q) || this.b.s(wv8.r)) {
            if (s1Var.size() > 1) {
                throw new IllegalArgumentException("digestParamSet expected to be absent");
            }
        } else if (s1Var.size() > 1) {
            this.c = l1.D(s1Var.A(1));
        }
        if (s1Var.size() > 2) {
            this.d = (l1) s1Var.A(2);
        }
    }
}
