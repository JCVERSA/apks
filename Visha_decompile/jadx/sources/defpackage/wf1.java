package defpackage;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;

public final class wf1 implements pc9 {
    public final AtomicReference a;

    public wf1(pc9 pc9Var) {
        y45.j(pc9Var, "sequence");
        this.a = new AtomicReference(pc9Var);
    }

    @Override
    public Iterator iterator() {
        pc9 pc9Var = (pc9) this.a.getAndSet(null);
        if (pc9Var != null) {
            return pc9Var.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
