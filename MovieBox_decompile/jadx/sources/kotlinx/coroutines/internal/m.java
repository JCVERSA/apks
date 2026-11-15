package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class m {

    public static final a f64898e = new a(null);

    private static final AtomicReferenceFieldUpdater f64899f = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "_next$volatile");

    private static final AtomicLongFieldUpdater f64900g = AtomicLongFieldUpdater.newUpdater(m.class, "_state$volatile");

    public static final z f64901h = new z("REMOVE_FROZEN");
    private volatile Object _next$volatile;
    private volatile long _state$volatile;

    private final int f64902a;

    private final boolean f64903b;

    private final int f64904c;

    private final AtomicReferenceArray f64905d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(long j10) {
            return (j10 & 2305843009213693952L) != 0 ? 2 : 1;
        }

        public final long b(long j10, int i10) {
            return d(j10, 1073741823L) | ((long) i10);
        }

        public final long c(long j10, int i10) {
            return d(j10, 1152921503533105152L) | (((long) i10) << 30);
        }

        public final long d(long j10, long j11) {
            return j10 & (~j11);
        }

        private a() {
        }
    }

    public static final class b {

        public final int f64906a;

        public b(int i10) {
            this.f64906a = i10;
        }
    }

    public m(int i10, boolean z10) {
        this.f64902a = i10;
        this.f64903b = z10;
        int i11 = i10 - 1;
        this.f64904c = i11;
        this.f64905d = new AtomicReferenceArray(i10);
        if (i11 > 1073741823) {
            throw new IllegalStateException("Check failed.");
        }
        if ((i10 & i11) != 0) {
            throw new IllegalStateException("Check failed.");
        }
    }

    private final m b(long j10) {
        m mVar = new m(this.f64902a * 2, this.f64903b);
        int i10 = (int) (1073741823 & j10);
        int i11 = (int) ((1152921503533105152L & j10) >> 30);
        while (true) {
            int i12 = this.f64904c;
            if ((i10 & i12) == (i12 & i11)) {
                f64900g.set(mVar, f64898e.d(j10, 1152921504606846976L));
                return mVar;
            }
            Object bVar = f().get(this.f64904c & i10);
            if (bVar == null) {
                bVar = new b(i10);
            }
            mVar.f().set(mVar.f64904c & i10, bVar);
            i10++;
        }
    }

    private final m c(long j10) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f64899f;
        while (true) {
            m mVar = (m) atomicReferenceFieldUpdater.get(this);
            if (mVar != null) {
                return mVar;
            }
            androidx.concurrent.futures.a.a(f64899f, this, null, b(j10));
        }
    }

    private final m e(int i10, Object obj) {
        Object obj2 = f().get(this.f64904c & i10);
        if (!(obj2 instanceof b) || ((b) obj2).f64906a != i10) {
            return null;
        }
        f().set(i10 & this.f64904c, obj);
        return this;
    }

    private final AtomicReferenceArray f() {
        return this.f64905d;
    }

    private final long k() {
        long j10;
        long j11;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f64900g;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            if ((j10 & 1152921504606846976L) != 0) {
                return j10;
            }
            j11 = j10 | 1152921504606846976L;
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, j11));
        return j11;
    }

    private final m n(int i10, int i11) {
        long j10;
        int i12;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f64900g;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            i12 = (int) (1073741823 & j10);
            if ((1152921504606846976L & j10) != 0) {
                return l();
            }
        } while (!f64900g.compareAndSet(this, j10, f64898e.b(j10, i11)));
        f().set(this.f64904c & i12, null);
        return null;
    }

    public final int a(Object obj) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f64900g;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            if ((3458764513820540928L & j10) != 0) {
                return f64898e.a(j10);
            }
            int i10 = (int) (1073741823 & j10);
            int i11 = (int) ((1152921503533105152L & j10) >> 30);
            int i12 = this.f64904c;
            if (((i11 + 2) & i12) == (i10 & i12)) {
                return 1;
            }
            if (!this.f64903b && f().get(i11 & i12) != null) {
                int i13 = this.f64902a;
                if (i13 < 1024 || ((i11 - i10) & 1073741823) > (i13 >> 1)) {
                    return 1;
                }
            } else if (f64900g.compareAndSet(this, j10, f64898e.c(j10, (i11 + 1) & 1073741823))) {
                f().set(i11 & i12, obj);
                m mVarE = this;
                while ((f64900g.get(mVarE) & 1152921504606846976L) != 0 && (mVarE = mVarE.l().e(i11, obj)) != null) {
                }
                return 0;
            }
        }
    }

    public final boolean d() {
        long j10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f64900g;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            if ((j10 & 2305843009213693952L) != 0) {
                return true;
            }
            if ((1152921504606846976L & j10) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, j10 | 2305843009213693952L));
        return true;
    }

    public final int g() {
        long j10 = f64900g.get(this);
        return (((int) ((j10 & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j10))) & 1073741823;
    }

    public final boolean j() {
        long j10 = f64900g.get(this);
        return ((int) (1073741823 & j10)) == ((int) ((j10 & 1152921503533105152L) >> 30));
    }

    public final m l() {
        return c(k());
    }

    public final Object m() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f64900g;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            if ((1152921504606846976L & j10) != 0) {
                return f64901h;
            }
            int i10 = (int) (1073741823 & j10);
            int i11 = this.f64904c;
            if ((((int) ((1152921503533105152L & j10) >> 30)) & i11) == (i11 & i10)) {
                return null;
            }
            Object obj = f().get(this.f64904c & i10);
            if (obj == null) {
                if (this.f64903b) {
                    return null;
                }
            } else {
                if (obj instanceof b) {
                    return null;
                }
                int i12 = (i10 + 1) & 1073741823;
                if (f64900g.compareAndSet(this, j10, f64898e.b(j10, i12))) {
                    f().set(this.f64904c & i10, null);
                    return obj;
                }
                if (this.f64903b) {
                    m mVarN = this;
                    do {
                        mVarN = mVarN.n(i10, i12);
                    } while (mVarN != null);
                    return obj;
                }
            }
        }
    }
}
