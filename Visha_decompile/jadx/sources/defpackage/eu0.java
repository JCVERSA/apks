package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.coroutines.d;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.BufferedChannelKt;

public final class eu0 extends oa9 {
    public final BufferedChannel f;
    public final AtomicReferenceArray g;

    public eu0(long j, eu0 eu0Var, BufferedChannel bufferedChannel, int i) {
        super(j, eu0Var, i);
        this.f = bufferedChannel;
        this.g = new AtomicReferenceArray(BufferedChannelKt.b * 2);
    }

    public final Object A(int i) {
        return z().get(i * 2);
    }

    public final Object B(int i) {
        return z().get((i * 2) + 1);
    }

    public final void C(int i, boolean z) {
        if (z) {
            y().m1((this.d * ((long) BufferedChannelKt.b)) + ((long) i));
        }
        t();
    }

    public final Object D(int i) {
        Object objA = A(i);
        w(i);
        return objA;
    }

    public final void E(int i, Object obj) {
        z().set(i * 2, obj);
    }

    public final void F(int i, Object obj) {
        z().set((i * 2) + 1, obj);
    }

    public final void G(int i, Object obj) {
        E(i, obj);
    }

    @Override
    public int r() {
        return BufferedChannelKt.b;
    }

    @Override
    public void s(int i, Throwable th, d dVar) throws IllegalAccessException, InvocationTargetException {
        e74 e74Var;
        e74 e74Var2;
        int i2 = BufferedChannelKt.b;
        boolean z = i >= i2;
        if (z) {
            i -= i2;
        }
        Object objA = A(i);
        while (true) {
            Object objB = B(i);
            if ((objB instanceof jgc) || (objB instanceof kgc)) {
                if (v(i, objB, z ? BufferedChannelKt.j : BufferedChannelKt.k)) {
                    w(i);
                    C(i, !z);
                    if (!z || (e74Var = y().c) == null) {
                        return;
                    }
                    qf7.a(e74Var, objA, dVar);
                    return;
                }
            } else {
                if (objB == BufferedChannelKt.j || objB == BufferedChannelKt.k) {
                    break;
                }
                if (objB != BufferedChannelKt.g && objB != BufferedChannelKt.f) {
                    if (objB == BufferedChannelKt.i || objB == BufferedChannelKt.d || objB == BufferedChannelKt.z()) {
                        return;
                    }
                    throw new IllegalStateException(("unexpected state: " + objB).toString());
                }
            }
        }
        w(i);
        if (!z || (e74Var2 = y().c) == null) {
            return;
        }
        qf7.a(e74Var2, objA, dVar);
    }

    public final boolean v(int i, Object obj, Object obj2) {
        return du0.a(z(), (i * 2) + 1, obj, obj2);
    }

    public final void w(int i) {
        E(i, null);
    }

    public final Object x(int i, Object obj) {
        return z().getAndSet((i * 2) + 1, obj);
    }

    public final BufferedChannel y() {
        BufferedChannel bufferedChannel = this.f;
        y45.g(bufferedChannel);
        return bufferedChannel;
    }

    public final AtomicReferenceArray z() {
        return this.g;
    }
}
