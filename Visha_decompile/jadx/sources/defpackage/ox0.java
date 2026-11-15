package defpackage;

public abstract class ox0 implements sbb {
    public int a;

    @Override
    public abstract px0 c();

    public final boolean e(px0 px0Var, px0 px0Var2) {
        y45.j(px0Var, "first");
        y45.j(px0Var2, "second");
        if (!y45.e(px0Var.getName(), px0Var2.getName())) {
            return false;
        }
        xt1 xt1VarB = px0Var.b();
        for (xt1 xt1VarB2 = px0Var2.b(); xt1VarB != null && xt1VarB2 != null; xt1VarB2 = xt1VarB2.b()) {
            if (xt1VarB instanceof qq6) {
                return xt1VarB2 instanceof qq6;
            }
            if (xt1VarB2 instanceof qq6) {
                return false;
            }
            if (xt1VarB instanceof dv7) {
                return (xt1VarB2 instanceof dv7) && y45.e(((dv7) xt1VarB).d(), ((dv7) xt1VarB2).d());
            }
            if ((xt1VarB2 instanceof dv7) || !y45.e(xt1VarB.getName(), xt1VarB2.getName())) {
                return false;
            }
            xt1VarB = xt1VarB.b();
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof sbb) || obj.hashCode() != hashCode()) {
            return false;
        }
        sbb sbbVar = (sbb) obj;
        if (sbbVar.getParameters().size() != getParameters().size()) {
            return false;
        }
        px0 px0VarC = c();
        px0 px0VarC2 = sbbVar.c();
        if (px0VarC2 != null && f(px0VarC) && f(px0VarC2)) {
            return g(px0VarC2);
        }
        return false;
    }

    public final boolean f(px0 px0Var) {
        return (id3.m(px0Var) || y82.E(px0Var)) ? false : true;
    }

    public abstract boolean g(px0 px0Var);

    public int hashCode() {
        int i = this.a;
        if (i != 0) {
            return i;
        }
        px0 px0VarC = c();
        int iHashCode = f(px0VarC) ? y82.m(px0VarC).hashCode() : System.identityHashCode(this);
        this.a = iHashCode;
        return iHashCode;
    }
}
