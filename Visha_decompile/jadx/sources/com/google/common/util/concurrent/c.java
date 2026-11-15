package com.google.common.util.concurrent;

import com.google.common.collect.Sets;
import defpackage.kj5;
import defpackage.u3;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.logging.Level;

public abstract class c extends AbstractFuture.h {
    public static final b d;
    public static final kj5 e = new kj5(c.class);
    public volatile Set b = null;
    public volatile int c;

    public static abstract class b {
        public b() {
        }

        public abstract void a(c cVar, Set set, Set set2);

        public abstract int b(c cVar);
    }

    public static final class C0110c extends b {
        public final AtomicReferenceFieldUpdater a;
        public final AtomicIntegerFieldUpdater b;

        public C0110c(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater) {
            super();
            this.a = atomicReferenceFieldUpdater;
            this.b = atomicIntegerFieldUpdater;
        }

        @Override
        public void a(c cVar, Set set, Set set2) {
            u3.a(this.a, cVar, set, set2);
        }

        @Override
        public int b(c cVar) {
            return this.b.decrementAndGet(cVar);
        }
    }

    public static final class d extends b {
        public d() {
            super();
        }

        @Override
        public void a(c cVar, Set set, Set set2) {
            synchronized (cVar) {
                try {
                    if (cVar.b == set) {
                        cVar.b = set2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override
        public int b(c cVar) {
            int iQ;
            synchronized (cVar) {
                iQ = c.q(cVar);
            }
            return iQ;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        b dVar;
        Throwable th = null;
        Object[] objArr = 0;
        try {
            dVar = new C0110c(AtomicReferenceFieldUpdater.newUpdater(c.class, Set.class, "b"), AtomicIntegerFieldUpdater.newUpdater(c.class, "c"));
        } catch (Throwable th2) {
            dVar = new d();
            th = th2;
        }
        d = dVar;
        if (th != null) {
            e.a().log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
    }

    public c(int i) {
        this.c = i;
    }

    public static int q(c cVar) {
        int i = cVar.c - 1;
        cVar.c = i;
        return i;
    }

    public abstract void r(Set set);

    public final void s() {
        this.b = null;
    }

    public final int t() {
        return d.b(this);
    }

    public final Set u() {
        Set set = this.b;
        if (set != null) {
            return set;
        }
        Set setF = Sets.f();
        r(setF);
        d.a(this, null, setF);
        Set set2 = this.b;
        Objects.requireNonNull(set2);
        return set2;
    }
}
