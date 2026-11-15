package defpackage;

import java.util.List;

public final class kf5 implements ff5 {
    public final ff5 b;

    public kf5(ff5 ff5Var) {
        y45.j(ff5Var, "origin");
        this.b = ff5Var;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        ff5 ff5Var = this.b;
        kf5 kf5Var = obj instanceof kf5 ? (kf5) obj : null;
        if (!y45.e(ff5Var, kf5Var != null ? kf5Var.b : null)) {
            return false;
        }
        he5 he5VarJ = j();
        if (he5VarJ instanceof de5) {
            ff5 ff5Var2 = obj instanceof ff5 ? (ff5) obj : null;
            he5 he5VarJ2 = ff5Var2 != null ? ff5Var2.j() : null;
            if (he5VarJ2 != null && (he5VarJ2 instanceof de5)) {
                return y45.e(ed5.b((de5) he5VarJ), ed5.b((de5) he5VarJ2));
            }
        }
        return false;
    }

    @Override
    public List getAnnotations() {
        return this.b.getAnnotations();
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    @Override
    public he5 j() {
        return this.b.j();
    }

    @Override
    public boolean k() {
        return this.b.k();
    }

    @Override
    public List l() {
        return this.b.l();
    }

    public String toString() {
        return "KTypeWrapper: " + this.b;
    }
}
