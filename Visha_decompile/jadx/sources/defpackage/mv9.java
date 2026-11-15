package defpackage;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class mv9 implements nm9 {
    public static final int j = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();
    public static final Object k = new Object();
    public int c;
    public long d;
    public final int e;
    public AtomicReferenceArray f;
    public final int g;
    public AtomicReferenceArray h;
    public final AtomicLong b = new AtomicLong();
    public final AtomicLong i = new AtomicLong();

    public mv9(int i) {
        int iA = od8.a(Math.max(8, i));
        int i2 = iA - 1;
        AtomicReferenceArray atomicReferenceArray = new AtomicReferenceArray(iA + 1);
        this.f = atomicReferenceArray;
        this.e = i2;
        a(iA);
        this.h = atomicReferenceArray;
        this.g = i2;
        this.d = iA - 2;
        o(0L);
    }

    public static int b(int i) {
        return i;
    }

    public static int c(long j2, int i) {
        return b(((int) j2) & i);
    }

    public static Object g(AtomicReferenceArray atomicReferenceArray, int i) {
        return atomicReferenceArray.get(i);
    }

    private void l(long j2) {
        this.i.lazySet(j2);
    }

    public static void m(AtomicReferenceArray atomicReferenceArray, int i, Object obj) {
        atomicReferenceArray.lazySet(i, obj);
    }

    private void o(long j2) {
        this.b.lazySet(j2);
    }

    public final void a(int i) {
        this.c = Math.min(i / 4, j);
    }

    @Override
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    public final long d() {
        return this.i.get();
    }

    public final long e() {
        return this.b.get();
    }

    public final long f() {
        return this.i.get();
    }

    public final AtomicReferenceArray h(AtomicReferenceArray atomicReferenceArray, int i) {
        int iB = b(i);
        AtomicReferenceArray atomicReferenceArray2 = (AtomicReferenceArray) g(atomicReferenceArray, iB);
        m(atomicReferenceArray, iB, null);
        return atomicReferenceArray2;
    }

    public final long i() {
        return this.b.get();
    }

    @Override
    public boolean isEmpty() {
        return i() == f();
    }

    public final Object j(AtomicReferenceArray atomicReferenceArray, long j2, int i) {
        this.h = atomicReferenceArray;
        int iC = c(j2, i);
        Object objG = g(atomicReferenceArray, iC);
        if (objG != null) {
            m(atomicReferenceArray, iC, null);
            l(j2 + 1);
        }
        return objG;
    }

    public final void k(AtomicReferenceArray atomicReferenceArray, long j2, int i, Object obj, long j3) {
        AtomicReferenceArray atomicReferenceArray2 = new AtomicReferenceArray(atomicReferenceArray.length());
        this.f = atomicReferenceArray2;
        this.d = (j3 + j2) - 1;
        m(atomicReferenceArray2, i, obj);
        n(atomicReferenceArray, atomicReferenceArray2);
        m(atomicReferenceArray, i, k);
        o(j2 + 1);
    }

    public final void n(AtomicReferenceArray atomicReferenceArray, AtomicReferenceArray atomicReferenceArray2) {
        m(atomicReferenceArray, b(atomicReferenceArray.length() - 1), atomicReferenceArray2);
    }

    @Override
    public boolean offer(Object obj) {
        if (obj == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        AtomicReferenceArray atomicReferenceArray = this.f;
        long jE = e();
        int i = this.e;
        int iC = c(jE, i);
        if (jE < this.d) {
            return p(atomicReferenceArray, obj, jE, iC);
        }
        long j2 = ((long) this.c) + jE;
        if (g(atomicReferenceArray, c(j2, i)) == null) {
            this.d = j2 - 1;
            return p(atomicReferenceArray, obj, jE, iC);
        }
        if (g(atomicReferenceArray, c(1 + jE, i)) == null) {
            return p(atomicReferenceArray, obj, jE, iC);
        }
        k(atomicReferenceArray, jE, iC, obj, i);
        return true;
    }

    public final boolean p(AtomicReferenceArray atomicReferenceArray, Object obj, long j2, int i) {
        m(atomicReferenceArray, i, obj);
        o(j2 + 1);
        return true;
    }

    @Override
    public Object poll() {
        AtomicReferenceArray atomicReferenceArray = this.h;
        long jD = d();
        int i = this.g;
        int iC = c(jD, i);
        Object objG = g(atomicReferenceArray, iC);
        boolean z = objG == k;
        if (objG == null || z) {
            if (z) {
                return j(h(atomicReferenceArray, i + 1), jD, i);
            }
            return null;
        }
        m(atomicReferenceArray, iC, null);
        l(jD + 1);
        return objG;
    }
}
