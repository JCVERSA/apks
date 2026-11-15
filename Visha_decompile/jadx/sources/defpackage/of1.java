package defpackage;

import java.util.List;

public final class of1 implements nj3 {
    public final List a;

    public of1(List list) {
        y45.j(list, "values");
        this.a = list;
    }

    @Override
    public List a(oj3 oj3Var) {
        y45.j(oj3Var, "resolver");
        return this.a;
    }

    @Override
    public qc2 b(oj3 oj3Var, e74 e74Var) {
        y45.j(oj3Var, "resolver");
        y45.j(e74Var, "callback");
        return qc2.A1;
    }

    public final List c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof of1) && y45.e(this.a, ((of1) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode() * 16;
    }
}
