package kotlinx.coroutines.channels;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.w;
import kotlinx.coroutines.s2;

public final class j extends w {

    private final BufferedChannel f64728e;

    private final AtomicReferenceArray f64729f;

    public j(long j10, j jVar, BufferedChannel bufferedChannel, int i10) {
        super(j10, jVar, i10);
        this.f64728e = bufferedChannel;
        this.f64729f = new AtomicReferenceArray(BufferedChannelKt.f64697b * 2);
    }

    private final void E(int i10, Object obj) {
        z().set(i10 * 2, obj);
    }

    private final AtomicReferenceArray z() {
        return this.f64729f;
    }

    public final Object A(int i10) {
        return z().get(i10 * 2);
    }

    public final Object B(int i10) {
        return z().get((i10 * 2) + 1);
    }

    public final void C(int i10, boolean z10) {
        if (z10) {
            y().k1((this.f64918c * ((long) BufferedChannelKt.f64697b)) + ((long) i10));
        }
        t();
    }

    public final Object D(int i10) {
        Object objA = A(i10);
        w(i10);
        return objA;
    }

    public final void F(int i10, Object obj) {
        z().set((i10 * 2) + 1, obj);
    }

    public final void G(int i10, Object obj) {
        E(i10, obj);
    }

    @Override
    public int r() {
        return BufferedChannelKt.f64697b;
    }

    @Override
    public void s(int i10, Throwable th2, CoroutineContext coroutineContext) {
        Function1 function1;
        Function1 function2;
        int i11 = BufferedChannelKt.f64697b;
        boolean z10 = i10 >= i11;
        if (z10) {
            i10 -= i11;
        }
        Object objA = A(i10);
        while (true) {
            Object objB = B(i10);
            if ((objB instanceof s2) || (objB instanceof t)) {
                if (v(i10, objB, z10 ? BufferedChannelKt.f64705j : BufferedChannelKt.f64706k)) {
                    w(i10);
                    C(i10, !z10);
                    if (!z10 || (function1 = y().f64691b) == null) {
                        return;
                    }
                    kotlinx.coroutines.internal.s.a(function1, objA, coroutineContext);
                    return;
                }
            } else {
                if (objB == BufferedChannelKt.f64705j || objB == BufferedChannelKt.f64706k) {
                    break;
                }
                if (objB != BufferedChannelKt.f64702g && objB != BufferedChannelKt.f64701f) {
                    if (objB == BufferedChannelKt.f64704i || objB == BufferedChannelKt.f64699d || objB == BufferedChannelKt.z()) {
                        return;
                    }
                    throw new IllegalStateException(("unexpected state: " + objB).toString());
                }
            }
        }
        w(i10);
        if (!z10 || (function2 = y().f64691b) == null) {
            return;
        }
        kotlinx.coroutines.internal.s.a(function2, objA, coroutineContext);
    }

    public final boolean v(int i10, Object obj, Object obj2) {
        return i.a(z(), (i10 * 2) + 1, obj, obj2);
    }

    public final void w(int i10) {
        E(i10, null);
    }

    public final Object x(int i10, Object obj) {
        return z().getAndSet((i10 * 2) + 1, obj);
    }

    public final BufferedChannel y() {
        BufferedChannel bufferedChannel = this.f64728e;
        Intrinsics.e(bufferedChannel);
        return bufferedChannel;
    }
}
