package kotlinx.coroutines.internal;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.a1;
import kotlinx.coroutines.q0;
import kotlinx.coroutines.t0;

public final class LimitedDispatcher extends kotlinx.coroutines.i0 implements t0 {

    private static final AtomicIntegerFieldUpdater f64868g = AtomicIntegerFieldUpdater.newUpdater(LimitedDispatcher.class, "runningWorkers$volatile");

    private final t0 f64869a;

    private final kotlinx.coroutines.i0 f64870b;

    private final int f64871c;

    private final String f64872d;

    private final l f64873e;

    private final Object f64874f;
    private volatile int runningWorkers$volatile;

    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\b\u0082\u0004\u0018\u00002\u00060\u0002j\u0002`\u0001B\u0013\u0012\n\u0010\u0003\u001a\u00060\u0002j\u0002`\u0001¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0007\u001a\u00020\bH\u0016R\u0014\u0010\u0003\u001a\u00060\u0002j\u0002`\u0001X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0006¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;", "Lkotlinx/coroutines/Runnable;", "Ljava/lang/Runnable;", "currentTask", "<init>", "(Lkotlinx/coroutines/internal/LimitedDispatcher;Ljava/lang/Runnable;)V", "Ljava/lang/Runnable;", "run", "", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    private final class Worker implements Runnable {
        private Runnable currentTask;

        public Worker(Runnable runnable) {
            this.currentTask = runnable;
        }

        @Override
        public void run() {
            int i10 = 0;
            while (true) {
                try {
                    this.currentTask.run();
                } catch (Throwable th2) {
                    kotlinx.coroutines.k0.a(EmptyCoroutineContext.INSTANCE, th2);
                }
                Runnable runnableS = LimitedDispatcher.this.s();
                if (runnableS == null) {
                    return;
                }
                this.currentTask = runnableS;
                i10++;
                if (i10 >= 16 && LimitedDispatcher.this.f64870b.isDispatchNeeded(LimitedDispatcher.this)) {
                    LimitedDispatcher.this.f64870b.dispatch(LimitedDispatcher.this, this);
                    return;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LimitedDispatcher(kotlinx.coroutines.i0 i0Var, int i10, String str) {
        t0 t0Var = i0Var instanceof t0 ? (t0) i0Var : null;
        this.f64869a = t0Var == null ? q0.a() : t0Var;
        this.f64870b = i0Var;
        this.f64871c = i10;
        this.f64872d = str;
        this.f64873e = new l(false);
        this.f64874f = new Object();
    }

    public final Runnable s() {
        while (true) {
            Runnable runnable = (Runnable) this.f64873e.e();
            if (runnable != null) {
                return runnable;
            }
            synchronized (this.f64874f) {
                f64868g.decrementAndGet(this);
                if (this.f64873e.c() == 0) {
                    return null;
                }
                f64868g.incrementAndGet(this);
            }
        }
    }

    private final boolean t() {
        synchronized (this.f64874f) {
            if (f64868g.get(this) >= this.f64871c) {
                return false;
            }
            f64868g.incrementAndGet(this);
            return true;
        }
    }

    @Override
    public void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable runnableS;
        this.f64873e.a(runnable);
        if (f64868g.get(this) >= this.f64871c || !t() || (runnableS = s()) == null) {
            return;
        }
        this.f64870b.dispatch(this, new Worker(runnableS));
    }

    @Override
    public void dispatchYield(CoroutineContext coroutineContext, Runnable runnable) {
        Runnable runnableS;
        this.f64873e.a(runnable);
        if (f64868g.get(this) >= this.f64871c || !t() || (runnableS = s()) == null) {
            return;
        }
        this.f64870b.dispatchYield(this, new Worker(runnableS));
    }

    @Override
    public a1 invokeOnTimeout(long j10, Runnable runnable, CoroutineContext coroutineContext) {
        return this.f64869a.invokeOnTimeout(j10, runnable, coroutineContext);
    }

    @Override
    public kotlinx.coroutines.i0 limitedParallelism(int i10, String str) {
        i.a(i10);
        return i10 >= this.f64871c ? i.b(this, str) : super.limitedParallelism(i10, str);
    }

    @Override
    public void scheduleResumeAfterDelay(long j10, kotlinx.coroutines.n nVar) {
        this.f64869a.scheduleResumeAfterDelay(j10, nVar);
    }

    @Override
    public String toString() {
        String str = this.f64872d;
        if (str != null) {
            return str;
        }
        return this.f64870b + ".limitedParallelism(" + this.f64871c + ')';
    }
}
