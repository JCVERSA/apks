package defpackage;

import java.util.Iterator;

public final class va3 implements md {
    public final o54 b;

    public va3(o54 o54Var) {
        y45.j(o54Var, "fqNameToMatch");
        this.b = o54Var;
    }

    @Override
    public ua3 a(o54 o54Var) {
        y45.j(o54Var, "fqName");
        if (y45.e(o54Var, this.b)) {
            return ua3.a;
        }
        return null;
    }

    @Override
    public boolean h(o54 o54Var) {
        return md.b.b(this, o54Var);
    }

    @Override
    public boolean isEmpty() {
        return false;
    }

    @Override
    public Iterator iterator() {
        return y71.k().iterator();
    }
}
