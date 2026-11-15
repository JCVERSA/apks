package defpackage;

import java.util.Iterator;

public final class bd2 implements pc9 {
    public final pc9 a;
    public final e74 b;

    public bd2(pc9 pc9Var, e74 e74Var) {
        y45.j(pc9Var, "source");
        y45.j(e74Var, "keySelector");
        this.a = pc9Var;
        this.b = e74Var;
    }

    @Override
    public Iterator iterator() {
        return new ad2(this.a.iterator(), this.b);
    }
}
