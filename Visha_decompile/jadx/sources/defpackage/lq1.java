package defpackage;

public abstract class lq1 extends dj {
    public nq1 c;

    public lq1(boolean z, nq1 nq1Var) {
        super(z);
        this.c = nq1Var;
    }

    public nq1 b() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof lq1)) {
            return false;
        }
        lq1 lq1Var = (lq1) obj;
        nq1 nq1Var = this.c;
        if (nq1Var == null) {
            return lq1Var.b() == null;
        }
        return nq1Var.equals(lq1Var.b());
    }

    public int hashCode() {
        int i = !a() ? 1 : 0;
        nq1 nq1Var = this.c;
        return nq1Var != null ? i ^ nq1Var.hashCode() : i;
    }
}
