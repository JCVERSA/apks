package io.reactivex.rxjava3.operators;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class h implements f {

    static final int f62557i = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();

    private static final Object f62558j = new Object();

    int f62560b;

    long f62561c;

    final int f62562d;

    AtomicReferenceArray f62563e;

    final int f62564f;

    AtomicReferenceArray f62565g;

    final AtomicLong f62559a = new AtomicLong();

    final AtomicLong f62566h = new AtomicLong();

    public h(int i10) {
        int iA = io.reactivex.rxjava3.internal.util.g.a(Math.max(8, i10));
        int i11 = iA - 1;
        AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(iA + 1);
        this.f62563e = atomicReferenceArray;
        this.f62562d = i11;
        a(iA);
        this.f62565g = atomicReferenceArray;
        this.f62564f = i11;
        this.f62561c = iA - 2;
        o(0L);
    }

    private void a(int i10) {
        this.f62560b = Math.min(i10 / 4, f62557i);
    }

    private static int b(int i10) {
        return i10;
    }

    private static int c(long j10, int i10) {
        return b(((int) j10) & i10);
    }

    private long d() {
        return this.f62566h.get();
    }

    private long e() {
        return this.f62559a.get();
    }

    private long f() {
        return this.f62566h.get();
    }

    private static Object g(AtomicReferenceArray atomicReferenceArray, int i10) {
        return atomicReferenceArray.get(i10);
    }

    private AtomicReferenceArray h(AtomicReferenceArray atomicReferenceArray, int i10) {
        int iB = b(i10);
        AtomicReferenceArray atomicReferenceArray2 = (AtomicReferenceArray) g(atomicReferenceArray, iB);
        m(atomicReferenceArray, iB, null);
        return atomicReferenceArray2;
    }

    private long i() {
        return this.f62559a.get();
    }

    private Object j(AtomicReferenceArray atomicReferenceArray, long j10, int i10) {
        this.f62565g = atomicReferenceArray;
        int iC = c(j10, i10);
        Object objG = g(atomicReferenceArray, iC);
        if (objG != null) {
            m(atomicReferenceArray, iC, null);
            l(j10 + 1);
        }
        return objG;
    }

    private void k(AtomicReferenceArray atomicReferenceArray, long j10, int i10, Object obj, long j11) {
        AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(atomicReferenceArray.length());
        this.f62563e = atomicReferenceArray2;
        this.f62561c = (j11 + j10) - 1;
        m(atomicReferenceArray2, i10, obj);
        n(atomicReferenceArray, atomicReferenceArray2);
        m(atomicReferenceArray, i10, f62558j);
        o(j10 + 1);
    }

    private void l(long j10) {
        this.f62566h.lazySet(j10);
    }

    private static void m(AtomicReferenceArray atomicReferenceArray, int i10, Object obj) {
        atomicReferenceArray.lazySet(i10, obj);
    }

    private void n(AtomicReferenceArray atomicReferenceArray, AtomicReferenceArray atomicReferenceArray2) {
        m(atomicReferenceArray, b(atomicReferenceArray.length() - 1), atomicReferenceArray2);
    }

    private void o(long j10) {
        this.f62559a.lazySet(j10);
    }

    private boolean p(AtomicReferenceArray atomicReferenceArray, Object obj, long j10, int i10) {
        m(atomicReferenceArray, i10, obj);
        o(j10 + 1);
        return true;
    }

    @Override
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override
    public boolean isEmpty() {
        return i() == f();
    }

    @Override
    public boolean offer(Object obj) {
        if (obj == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        AtomicReferenceArray atomicReferenceArray = this.f62563e;
        long jE = e();
        int i10 = this.f62562d;
        int iC = c(jE, i10);
        if (jE < this.f62561c) {
            return p(atomicReferenceArray, obj, jE, iC);
        }
        long j10 = ((long) this.f62560b) + jE;
        if (g(atomicReferenceArray, c(j10, i10)) == null) {
            this.f62561c = j10 - 1;
            return p(atomicReferenceArray, obj, jE, iC);
        }
        if (g(atomicReferenceArray, c(1 + jE, i10)) == null) {
            return p(atomicReferenceArray, obj, jE, iC);
        }
        k(atomicReferenceArray, jE, iC, obj, i10);
        return true;
    }

    @Override
    public Object poll() {
        AtomicReferenceArray atomicReferenceArray = this.f62565g;
        long jD = d();
        int i10 = this.f62564f;
        int iC = c(jD, i10);
        Object objG = g(atomicReferenceArray, iC);
        boolean z10 = objG == f62558j;
        if (objG == null || z10) {
            if (z10) {
                return j(h(atomicReferenceArray, i10 + 1), jD, i10);
            }
            return null;
        }
        m(atomicReferenceArray, iC, null);
        l(jD + 1);
        return objG;
    }
}
