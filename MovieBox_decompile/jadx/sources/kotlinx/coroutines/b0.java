package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;

public class b0 {

    private static final AtomicIntegerFieldUpdater f64675b = AtomicIntegerFieldUpdater.newUpdater(b0.class, "_handled$volatile");
    private volatile int _handled$volatile;

    public final Throwable f64676a;

    public b0(Throwable th2, boolean z10) {
        this.f64676a = th2;
        this._handled$volatile = z10 ? 1 : 0;
    }

    public final boolean a() {
        return f64675b.get(this) != 0;
    }

    public final boolean c() {
        return f64675b.compareAndSet(this, 0, 1);
    }

    public String toString() {
        return p0.a(this) + '[' + this.f64676a + ']';
    }

    public b0(Throwable th2, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(th2, (i10 & 2) != 0 ? false : z10);
    }
}
