package defpackage;

import java.util.Collection;
import java.util.List;

public final class iq8 extends bq8 implements y75 {
    public final o54 a;

    public iq8(o54 o54Var) {
        y45.j(o54Var, "fqName");
        this.a = o54Var;
    }

    @Override
    public k65 a(o54 o54Var) {
        y45.j(o54Var, "fqName");
        return null;
    }

    @Override
    public o54 d() {
        return this.a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof iq8) && y45.e(d(), ((iq8) obj).d());
    }

    public int hashCode() {
        return d().hashCode();
    }

    @Override
    public Collection q(e74 e74Var) {
        y45.j(e74Var, "nameFilter");
        return y71.k();
    }

    @Override
    public Collection r() {
        return y71.k();
    }

    public String toString() {
        return iq8.class.getName() + ": " + d();
    }

    @Override
    public boolean x() {
        return false;
    }

    @Override
    public List getAnnotations() {
        return y71.k();
    }
}
