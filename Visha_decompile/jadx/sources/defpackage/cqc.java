package defpackage;

public class cqc extends j1 implements v0 {
    public static eqc g = c40.T;
    public boolean b;
    public int c;
    public eqc d;
    public wm8[] e;
    public aq1 f;

    public cqc(s1 s1Var) {
        this(g, s1Var);
    }

    public static cqc m(y1 y1Var, boolean z) {
        return o(s1.y(y1Var, true));
    }

    public static cqc n(eqc eqcVar, Object obj) {
        if (obj instanceof cqc) {
            return new cqc(eqcVar, (cqc) obj);
        }
        if (obj != null) {
            return new cqc(eqcVar, s1.z(obj));
        }
        return null;
    }

    public static cqc o(Object obj) {
        if (obj instanceof cqc) {
            return (cqc) obj;
        }
        if (obj != null) {
            return new cqc(s1.z(obj));
        }
        return null;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof cqc) && !(obj instanceof s1)) {
            return false;
        }
        if (j().s(((x0) obj).j())) {
            return true;
        }
        try {
            return this.d.f(this, o(obj));
        } catch (Exception unused) {
            return false;
        }
    }

    @Override
    public int hashCode() {
        if (this.b) {
            return this.c;
        }
        this.b = true;
        int iC = this.d.c(this);
        this.c = iC;
        return iC;
    }

    @Override
    public p1 j() {
        return this.f;
    }

    public wm8[] p() {
        return (wm8[]) this.e.clone();
    }

    public int size() {
        return this.e.length;
    }

    public String toString() {
        return this.d.e(this);
    }

    public cqc(eqc eqcVar, s1 s1Var) {
        int size = s1Var.size();
        this.d = eqcVar;
        this.e = new wm8[size];
        boolean z = true;
        for (int i = 0; i < size; i++) {
            x0 x0VarA = s1Var.A(i);
            wm8 wm8VarN = wm8.n(x0VarA);
            z &= wm8VarN == x0VarA;
            this.e[i] = wm8VarN;
        }
        this.f = z ? aq1.H(s1Var) : new aq1(this.e);
    }

    public cqc(eqc eqcVar, cqc cqcVar) {
        this.d = eqcVar;
        this.e = cqcVar.e;
        this.f = cqcVar.f;
    }

    public cqc(eqc eqcVar, String str) {
        this(eqcVar.b(str));
        this.d = eqcVar;
    }

    public cqc(eqc eqcVar, wm8[] wm8VarArr) {
        this.d = eqcVar;
        this.e = (wm8[]) wm8VarArr.clone();
        this.f = new aq1(this.e);
    }

    public cqc(String str) {
        this(g, str);
    }

    public cqc(wm8[] wm8VarArr) {
        this(g, wm8VarArr);
    }
}
