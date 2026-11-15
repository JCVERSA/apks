package androidx.room.support;

import android.os.SystemClock;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.t1;

public final class AutoCloser {

    public static final a f14395l = new a(null);

    private final b f14396a;

    private z3.e f14397b;

    private n0 f14398c;

    private Function0 f14399d;

    private final Object f14400e;

    private final long f14401f;

    private final AtomicInteger f14402g;

    private AtomicLong f14403h;

    private z3.d f14404i;

    private boolean f14405j;

    private t1 f14406k;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public interface b {
        long a();
    }

    public AutoCloser(long j10, TimeUnit timeUnit, b watch) {
        Intrinsics.h(timeUnit, "timeUnit");
        Intrinsics.h(watch, "watch");
        this.f14396a = watch;
        this.f14400e = new Object();
        this.f14401f = timeUnit.toMillis(j10);
        this.f14402g = new AtomicInteger(0);
        this.f14403h = new AtomicLong(watch.a());
    }

    public static final long b() {
        return SystemClock.uptimeMillis();
    }

    public final void e() {
        synchronized (this.f14400e) {
            try {
                if (this.f14396a.a() - this.f14403h.get() < this.f14401f) {
                    return;
                }
                if (this.f14402g.get() != 0) {
                    return;
                }
                Function0 function0 = this.f14399d;
                if (function0 == null) {
                    throw new IllegalStateException("onAutoCloseCallback is null but it should  have been set before use. Please file a bug against Room at: https://issuetracker.google.com/issues/new?component=413107&template=1096568");
                }
                function0.invoke();
                z3.d dVar = this.f14404i;
                if (dVar != null && dVar.isOpen()) {
                    dVar.close();
                }
                this.f14404i = null;
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void f() {
        synchronized (this.f14400e) {
            try {
                this.f14405j = true;
                t1 t1Var = this.f14406k;
                if (t1Var != null) {
                    t1.a.b(t1Var, null, 1, null);
                }
                this.f14406k = null;
                z3.d dVar = this.f14404i;
                if (dVar != null) {
                    dVar.close();
                }
                this.f14404i = null;
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void g() {
        n0 n0Var;
        int iDecrementAndGet = this.f14402g.decrementAndGet();
        if (iDecrementAndGet < 0) {
            throw new IllegalStateException("Unbalanced reference count.");
        }
        this.f14403h.set(this.f14396a.a());
        if (iDecrementAndGet == 0) {
            n0 n0Var2 = this.f14398c;
            if (n0Var2 == null) {
                Intrinsics.y("coroutineScope");
                n0Var = null;
            } else {
                n0Var = n0Var2;
            }
            this.f14406k = kotlinx.coroutines.k.d(n0Var, null, null, new AutoCloser$decrementCountAndScheduleClose$2(this, null), 3, null);
        }
    }

    public final Object h(Function1 block) {
        Intrinsics.h(block, "block");
        try {
            return block.invoke(j());
        } finally {
            g();
        }
    }

    public final z3.d i() {
        return this.f14404i;
    }

    public final z3.d j() {
        t1 t1Var = this.f14406k;
        z3.e eVar = null;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.f14406k = null;
        this.f14402g.incrementAndGet();
        if (this.f14405j) {
            throw new IllegalStateException("Attempting to open already closed database.");
        }
        synchronized (this.f14400e) {
            z3.d dVar = this.f14404i;
            if (dVar != null && dVar.isOpen()) {
                return dVar;
            }
            z3.e eVar2 = this.f14397b;
            if (eVar2 == null) {
                Intrinsics.y("delegateOpenHelper");
            } else {
                eVar = eVar2;
            }
            z3.d writableDatabase = eVar.getWritableDatabase();
            this.f14404i = writableDatabase;
            return writableDatabase;
        }
    }

    public final void k(n0 coroutineScope) {
        Intrinsics.h(coroutineScope, "coroutineScope");
        this.f14398c = coroutineScope;
    }

    public final void l(z3.e delegateOpenHelper) {
        Intrinsics.h(delegateOpenHelper, "delegateOpenHelper");
        if (delegateOpenHelper instanceof AutoClosingRoomOpenHelper) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        this.f14397b = delegateOpenHelper;
    }

    public final boolean m() {
        return !this.f14405j;
    }

    public final void n(Function0 onAutoClose) {
        Intrinsics.h(onAutoClose, "onAutoClose");
        this.f14399d = onAutoClose;
    }

    public AutoCloser(long j10, TimeUnit timeUnit, b bVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(j10, timeUnit, (i10 & 4) != 0 ? new b() {
            @Override
            public final long a() {
                return AutoCloser.b();
            }
        } : bVar);
    }
}
