package androidx.datastore.core;

import java.util.concurrent.atomic.AtomicInteger;

public final class b {

    private final AtomicInteger f8302a;

    public b(int i10) {
        this.f8302a = new AtomicInteger(i10);
    }

    public final int a() {
        return this.f8302a.decrementAndGet();
    }

    public final int b() {
        return this.f8302a.get();
    }

    public final int c() {
        return this.f8302a.getAndIncrement();
    }

    public final int d() {
        return this.f8302a.incrementAndGet();
    }
}
