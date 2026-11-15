package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.functions.Function1;

final class r1 extends w1 {

    private static final AtomicIntegerFieldUpdater f64944f = AtomicIntegerFieldUpdater.newUpdater(r1.class, "_invoked$volatile");
    private volatile int _invoked$volatile = 0;

    private final Function1 f64945e;

    public r1(Function1 function1) {
        this.f64945e = function1;
    }

    @Override
    public boolean u() {
        return true;
    }

    @Override
    public void v(Throwable th2) {
        if (f64944f.compareAndSet(this, 0, 1)) {
            this.f64945e.invoke(th2);
        }
    }
}
