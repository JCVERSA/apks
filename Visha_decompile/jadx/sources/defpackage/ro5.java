package defpackage;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.io.FileUtils;

public final class ro5 {
    public static final a e = new a(null);
    public static final AtomicReferenceFieldUpdater f = AtomicReferenceFieldUpdater.newUpdater(ro5.class, Object.class, "_next$volatile");
    public static final AtomicLongFieldUpdater g = AtomicLongFieldUpdater.newUpdater(ro5.class, "_state$volatile");
    public static final y7a h = new y7a("REMOVE_FROZEN");
    private volatile Object _next$volatile;
    private volatile long _state$volatile;
    public final int a;
    public final boolean b;
    public final int c;
    public final AtomicReferenceArray d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(long j) {
            return (j & 2305843009213693952L) != 0 ? 2 : 1;
        }

        public final long b(long j, int i) {
            return d(j, 1073741823L) | ((long) i);
        }

        public final long c(long j, int i) {
            return d(j, 1152921503533105152L) | (((long) i) << 30);
        }

        public final long d(long j, long j2) {
            return j & (~j2);
        }

        public a() {
        }
    }

    public static final class b {
        public final int a;

        public b(int i) {
            this.a = i;
        }
    }

    public ro5(int i, boolean z) {
        this.a = i;
        this.b = z;
        int i2 = i - 1;
        this.c = i2;
        this.d = new AtomicReferenceArray(i);
        if (i2 > 1073741823) {
            throw new IllegalStateException("Check failed.");
        }
        if ((i & i2) != 0) {
            throw new IllegalStateException("Check failed.");
        }
    }

    public final int a(Object obj) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = g;
        while (true) {
            long j = atomicLongFieldUpdater.get(this);
            if ((3458764513820540928L & j) != 0) {
                return e.a(j);
            }
            int i = (int) (1073741823 & j);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            int i3 = this.c;
            if (((i2 + 2) & i3) == (i & i3)) {
                return 1;
            }
            if (!this.b && f().get(i2 & i3) != null) {
                int i4 = this.a;
                if (i4 < 1024 || ((i2 - i) & 1073741823) > (i4 >> 1)) {
                    return 1;
                }
            } else if (g.compareAndSet(this, j, e.c(j, (i2 + 1) & 1073741823))) {
                f().set(i2 & i3, obj);
                while ((g.get(this) & FileUtils.ONE_EB) != 0 && (this = this.l().e(i2, obj)) != null) {
                }
                return 0;
            }
        }
    }

    public final ro5 b(long j) {
        ro5 ro5Var = new ro5(this.a * 2, this.b);
        int i = (int) (1073741823 & j);
        int i2 = (int) ((1152921503533105152L & j) >> 30);
        while (true) {
            int i3 = this.c;
            if ((i & i3) == (i3 & i2)) {
                g.set(ro5Var, e.d(j, FileUtils.ONE_EB));
                return ro5Var;
            }
            Object bVar = f().get(this.c & i);
            if (bVar == null) {
                bVar = new b(i);
            }
            ro5Var.f().set(ro5Var.c & i, bVar);
            i++;
        }
    }

    public final ro5 c(long j) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f;
        while (true) {
            ro5 ro5Var = (ro5) atomicReferenceFieldUpdater.get(this);
            if (ro5Var != null) {
                return ro5Var;
            }
            u3.a(f, this, null, b(j));
        }
    }

    public final boolean d() {
        long j;
        AtomicLongFieldUpdater atomicLongFieldUpdater = g;
        do {
            j = atomicLongFieldUpdater.get(this);
            if ((j & 2305843009213693952L) != 0) {
                return true;
            }
            if ((FileUtils.ONE_EB & j) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, j | 2305843009213693952L));
        return true;
    }

    public final ro5 e(int i, Object obj) {
        Object obj2 = f().get(this.c & i);
        if (!(obj2 instanceof b) || ((b) obj2).a != i) {
            return null;
        }
        f().set(i & this.c, obj);
        return this;
    }

    public final AtomicReferenceArray f() {
        return this.d;
    }

    public final int g() {
        long j = g.get(this);
        return 1073741823 & (((int) ((j & 1152921503533105152L) >> 30)) - ((int) (1073741823 & j)));
    }

    public final boolean j() {
        long j = g.get(this);
        return ((int) (1073741823 & j)) == ((int) ((j & 1152921503533105152L) >> 30));
    }

    public final long k() {
        long j;
        long j2;
        AtomicLongFieldUpdater atomicLongFieldUpdater = g;
        do {
            j = atomicLongFieldUpdater.get(this);
            if ((j & FileUtils.ONE_EB) != 0) {
                return j;
            }
            j2 = j | FileUtils.ONE_EB;
        } while (!atomicLongFieldUpdater.compareAndSet(this, j, j2));
        return j2;
    }

    public final ro5 l() {
        return c(k());
    }

    public final Object m() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = g;
        while (true) {
            long j = atomicLongFieldUpdater.get(this);
            if ((FileUtils.ONE_EB & j) != 0) {
                return h;
            }
            int i = (int) (1073741823 & j);
            int i2 = this.c;
            if ((((int) ((1152921503533105152L & j) >> 30)) & i2) == (i2 & i)) {
                return null;
            }
            Object obj = f().get(this.c & i);
            if (obj == null) {
                if (this.b) {
                    return null;
                }
            } else {
                if (obj instanceof b) {
                    return null;
                }
                int i3 = (i + 1) & 1073741823;
                if (g.compareAndSet(this, j, e.b(j, i3))) {
                    f().set(this.c & i, null);
                    return obj;
                }
                if (this.b) {
                    do {
                        this = this.n(i, i3);
                    } while (this != null);
                    return obj;
                }
            }
        }
    }

    public final ro5 n(int i, int i2) {
        long j;
        int i3;
        AtomicLongFieldUpdater atomicLongFieldUpdater = g;
        do {
            j = atomicLongFieldUpdater.get(this);
            i3 = (int) (1073741823 & j);
            if ((FileUtils.ONE_EB & j) != 0) {
                return l();
            }
        } while (!g.compareAndSet(this, j, e.b(j, i2)));
        f().set(this.c & i3, null);
        return null;
    }
}
