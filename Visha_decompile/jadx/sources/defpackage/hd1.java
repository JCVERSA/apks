package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class hd1 implements qc2 {
    public final List b = new ArrayList();
    public boolean c;

    public final void a(qc2 qc2Var) {
        y45.j(qc2Var, "disposable");
        if (this.c) {
            throw new IllegalArgumentException("close() method was called");
        }
        if (qc2Var != qc2.A1) {
            this.b.add(qc2Var);
        }
    }

    @Override
    public void close() {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((qc2) it.next()).close();
        }
        this.b.clear();
        this.c = true;
    }
}
