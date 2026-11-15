package defpackage;

import java.util.Iterator;

public final class nz4 implements Iterable, qe5 {
    public final c74 b;

    public nz4(c74 c74Var) {
        y45.j(c74Var, "iteratorFactory");
        this.b = c74Var;
    }

    @Override
    public Iterator iterator() {
        return new oz4((Iterator) this.b.invoke());
    }
}
