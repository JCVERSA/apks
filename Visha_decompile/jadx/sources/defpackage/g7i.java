package defpackage;

import com.google.android.gms.internal.ads.g8;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

public final class g7i extends f7i {
    public static final AtomicReferenceFieldUpdater a;
    public static final AtomicIntegerFieldUpdater b;

    static {
        f7i f7iVar = g8.d;
        a = AtomicReferenceFieldUpdater.newUpdater(g8.class, Set.class, "b");
        b = AtomicIntegerFieldUpdater.newUpdater(g8.class, "c");
    }

    public g7i(i7i i7iVar) {
        super(null);
    }

    @Override
    public final int a(g8 g8Var) {
        return b.decrementAndGet(g8Var);
    }

    @Override
    public final void b(g8 g8Var, Set set, Set set2) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
        while (!u3.a(atomicReferenceFieldUpdater, g8Var, null, set2) && atomicReferenceFieldUpdater.get(g8Var) == null) {
        }
    }
}
