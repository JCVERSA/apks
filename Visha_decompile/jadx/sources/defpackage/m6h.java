package defpackage;

import java.util.concurrent.atomic.AtomicBoolean;

public final class m6h {
    public final AtomicBoolean a = new AtomicBoolean(false);
    public l6h b;

    public final l6h a() {
        return this.b;
    }

    public final void b(l6h l6hVar) {
        this.b = l6hVar;
    }

    public final void c(boolean z) {
        this.a.set(true);
    }

    public final boolean d() {
        return this.a.get();
    }
}
