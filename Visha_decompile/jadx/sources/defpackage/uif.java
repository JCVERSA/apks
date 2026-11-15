package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;

public final class uif {
    public final AtomicBoolean a = new AtomicBoolean(false);

    public uif(String str) {
    }

    public final void a() {
        this.a.set(false);
    }

    public final void b() {
        this.a.set(true);
    }

    public final void c() {
        this.a.set(false);
    }

    public final boolean d() {
        return this.a.get();
    }
}
