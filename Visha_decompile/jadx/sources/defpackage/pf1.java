package defpackage;

public abstract class pf1 {
    public final Object a;

    public pf1(Object obj) {
        this.a = obj;
    }

    public abstract eh5 a(qq6 qq6Var);

    public Object b() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            Object objB = b();
            pf1 pf1Var = obj instanceof pf1 ? (pf1) obj : null;
            if (!y45.e(objB, pf1Var != null ? pf1Var.b() : null)) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        Object objB = b();
        if (objB != null) {
            return objB.hashCode();
        }
        return 0;
    }

    public String toString() {
        return String.valueOf(b());
    }
}
