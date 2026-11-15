package kotlinx.coroutines.internal;

import defpackage.bl5;
import defpackage.cr0;
import defpackage.h12;
import defpackage.kk1;
import defpackage.qo5;
import defpackage.uc2;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.d;
import kotlinx.coroutines.c;
import kotlinx.coroutines.e;

public final class LimitedDispatcher extends c implements e {
    public static final AtomicIntegerFieldUpdater h = AtomicIntegerFieldUpdater.newUpdater(LimitedDispatcher.class, "runningWorkers$volatile");
    public final e b;
    public final c c;
    public final int d;
    public final String e;
    public final qo5 f;
    public final Object g;
    private volatile int runningWorkers$volatile;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0013\u0012\n\u0010\u0003\u001a\u00060\u0001j\u0002`\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bR\u001a\u0010\u0003\u001a\u00060\u0001j\u0002`\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\t¨\u0006\n"}, d2 = {"Lkotlinx/coroutines/internal/LimitedDispatcher$Worker;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "currentTask", MethodDecl.initName, "(Lkotlinx/coroutines/internal/LimitedDispatcher;Ljava/lang/Runnable;)V", "Lzfb;", "run", "()V", "Ljava/lang/Runnable;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public final class Worker implements Runnable {
        private Runnable currentTask;

        public Worker(Runnable runnable) {
            this.currentTask = runnable;
        }

        @Override
        public void run() {
            int i = 0;
            while (true) {
                try {
                    this.currentTask.run();
                } catch (Throwable th) {
                    kk1.a(EmptyCoroutineContext.INSTANCE, th);
                }
                Runnable runnableE = LimitedDispatcher.this.E();
                if (runnableE == null) {
                    return;
                }
                this.currentTask = runnableE;
                i++;
                if (i >= 16 && LimitedDispatcher.this.c.isDispatchNeeded(LimitedDispatcher.this)) {
                    LimitedDispatcher.this.c.dispatch(LimitedDispatcher.this, this);
                    return;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LimitedDispatcher(c cVar, int i, String str) {
        e eVar = cVar instanceof e ? (e) cVar : null;
        this.b = eVar == null ? h12.a() : eVar;
        this.c = cVar;
        this.d = i;
        this.e = str;
        this.f = new qo5(false);
        this.g = new Object();
    }

    public final Runnable E() {
        while (true) {
            Runnable runnable = (Runnable) this.f.e();
            if (runnable != null) {
                return runnable;
            }
            synchronized (this.g) {
                h.decrementAndGet(this);
                if (this.f.c() == 0) {
                    return null;
                }
                h.incrementAndGet(this);
            }
        }
    }

    public final boolean F() {
        synchronized (this.g) {
            if (h.get(this) >= this.d) {
                return false;
            }
            h.incrementAndGet(this);
            return true;
        }
    }

    @Override
    public void dispatch(d dVar, Runnable runnable) {
        Runnable runnableE;
        this.f.a(runnable);
        if (h.get(this) >= this.d || !F() || (runnableE = E()) == null) {
            return;
        }
        this.c.dispatch(this, new Worker(runnableE));
    }

    @Override
    public void dispatchYield(d dVar, Runnable runnable) {
        Runnable runnableE;
        this.f.a(runnable);
        if (h.get(this) >= this.d || !F() || (runnableE = E()) == null) {
            return;
        }
        this.c.dispatchYield(this, new Worker(runnableE));
    }

    @Override
    public uc2 invokeOnTimeout(long j, Runnable runnable, d dVar) {
        return this.b.invokeOnTimeout(j, runnable, dVar);
    }

    @Override
    public c limitedParallelism(int i, String str) {
        bl5.a(i);
        return i >= this.d ? bl5.b(this, str) : super.limitedParallelism(i, str);
    }

    @Override
    public void scheduleResumeAfterDelay(long j, cr0 cr0Var) {
        this.b.scheduleResumeAfterDelay(j, cr0Var);
    }

    @Override
    public String toString() {
        String str = this.e;
        if (str != null) {
            return str;
        }
        return this.c + ".limitedParallelism(" + this.d + ')';
    }
}
