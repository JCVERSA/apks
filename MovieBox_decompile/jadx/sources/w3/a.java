package w3;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private final Function0 f74141a;

    private final AtomicInteger f74142b;

    private final AtomicBoolean f74143c;

    public a(Function0 closeAction) {
        Intrinsics.h(closeAction, "closeAction");
        this.f74141a = closeAction;
        this.f74142b = new AtomicInteger(0);
        this.f74143c = new AtomicBoolean(false);
    }

    private final boolean b() {
        return this.f74143c.get();
    }

    public final boolean a() {
        synchronized (this) {
            if (b()) {
                return false;
            }
            this.f74142b.incrementAndGet();
            return true;
        }
    }

    public final void c() {
        synchronized (this) {
            this.f74142b.decrementAndGet();
            if (this.f74142b.get() < 0) {
                throw new IllegalStateException("Unbalanced call to unblock() detected.");
            }
            Unit unit = Unit.f64096a;
        }
    }
}
