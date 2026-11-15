package defpackage;

import java.util.concurrent.atomic.AtomicInteger;

public final class wx2 {
    public int a = 10;
    public AtomicInteger b = new AtomicInteger(0);

    public final boolean a() {
        return this.b.get() >= this.a;
    }

    public final void b() {
        this.b.set(0);
    }

    public final void c(c74 c74Var) {
        y45.j(c74Var, "downCallBack");
        if (this.b.incrementAndGet() >= this.a) {
            c74Var.invoke();
        }
    }
}
