package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;

public class vb1 {
    public static final AtomicIntegerFieldUpdater b = AtomicIntegerFieldUpdater.newUpdater(vb1.class, "_handled$volatile");
    private volatile int _handled$volatile;
    public final Throwable a;

    public vb1(Throwable th, boolean z) {
        this.a = th;
        this._handled$volatile = z ? 1 : 0;
    }

    public final boolean a() {
        return b.get(this) != 0;
    }

    public final boolean c() {
        return b.compareAndSet(this, 0, 1);
    }

    public String toString() {
        return qt1.a(this) + '[' + this.a + ']';
    }

    public vb1(Throwable th, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(th, (i & 2) != 0 ? false : z);
    }
}
