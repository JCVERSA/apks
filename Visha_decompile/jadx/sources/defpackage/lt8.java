package defpackage;

import java.util.ConcurrentModificationException;

public final class lt8 {
    public final c74 a;
    public Object b;

    public lt8(c74 c74Var) {
        y45.j(c74Var, "initializer");
        this.a = c74Var;
    }

    public final Object a() {
        if (this.b == null) {
            this.b = this.a.invoke();
        }
        Object obj = this.b;
        if (obj != null) {
            return obj;
        }
        throw new ConcurrentModificationException("Set to null by another thread");
    }

    public final boolean b() {
        return this.b != null;
    }

    public final void c() {
        this.b = null;
    }
}
