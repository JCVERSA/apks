package androidx.datastore.preferences.core;

import java.util.concurrent.atomic.AtomicBoolean;

public final class b {

    private final AtomicBoolean f8343a;

    public b(boolean z10) {
        this.f8343a = new AtomicBoolean(z10);
    }

    public final boolean a() {
        return this.f8343a.get();
    }

    public final void b(boolean z10) {
        this.f8343a.set(z10);
    }
}
