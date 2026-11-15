package defpackage;

import java.util.HashSet;
import java.util.Iterator;

public final class ad2 extends b3 {
    public final Iterator d;
    public final e74 e;
    public final HashSet f;

    public ad2(Iterator it, e74 e74Var) {
        y45.j(it, "source");
        y45.j(e74Var, "keySelector");
        this.d = it;
        this.e = e74Var;
        this.f = new HashSet();
    }

    @Override
    public void b() {
        while (this.d.hasNext()) {
            Object next = this.d.next();
            if (this.f.add(this.e.invoke(next))) {
                d(next);
                return;
            }
        }
        c();
    }
}
