package kotlinx.coroutines;

import defpackage.ae3;
import defpackage.cr0;
import defpackage.d4;
import defpackage.fia;
import defpackage.fr0;
import defpackage.jia;
import defpackage.k17;
import defpackage.kia;
import defpackage.ro5;
import defpackage.u3;
import defpackage.uc2;
import defpackage.wh1;
import defpackage.wn8;
import defpackage.y45;
import defpackage.zfb;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

public abstract class EventLoopImplBase extends g implements e {
    private volatile Object _delayed$volatile;
    private volatile int _isCompleted$volatile = 0;
    private volatile Object _queue$volatile;
    private static final AtomicReferenceFieldUpdater _queue$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(EventLoopImplBase.class, Object.class, "_queue$volatile");
    private static final AtomicReferenceFieldUpdater _delayed$volatile$FU = AtomicReferenceFieldUpdater.newUpdater(EventLoopImplBase.class, Object.class, "_delayed$volatile");
    private static final AtomicIntegerFieldUpdater _isCompleted$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(EventLoopImplBase.class, "_isCompleted$volatile");

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rR\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u000e¨\u0006\u000f"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "", "nanoTime", "Lcr0;", "Lzfb;", "cont", MethodDecl.initName, "(Lkotlinx/coroutines/EventLoopImplBase;JLcr0;)V", "run", "()V", "", "toString", "()Ljava/lang/String;", "Lcr0;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public final class DelayedResumeTask extends DelayedTask {
        private final cr0 cont;

        public DelayedResumeTask(long j, cr0 cr0Var) {
            super(j);
            this.cont = cr0Var;
        }

        @Override
        public void run() {
            this.cont.resumeUndispatched(EventLoopImplBase.this, zfb.a);
        }

        @Override
        public String toString() {
            return super.toString() + this.cont;
        }
    }

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0002\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\u0010\u0006\u001a\u00060\u0004j\u0002`\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u0018\u0010\u0006\u001a\u00060\u0004j\u0002`\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u000f¨\u0006\u0010"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "", "nanoTime", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", MethodDecl.initName, "(JLjava/lang/Runnable;)V", "Lzfb;", "run", "()V", "", "toString", "()Ljava/lang/String;", "Ljava/lang/Runnable;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class DelayedRunnableTask extends DelayedTask {
        private final Runnable block;

        public DelayedRunnableTask(long j, Runnable runnable) {
            super(j);
            this.block = runnable;
        }

        @Override
        public void run() {
            this.block.run();
        }

        @Override
        public String toString() {
            return super.toString() + this.block;
        }
    }

    @Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0007\b \u0018\u00002\u00060\u0001j\u0002`\u00022\b\u0012\u0004\u0012\u00020\u00000\u00032\u00020\u00042\u00020\u00052\u00060\u0006j\u0002`\u0007B\u000f\u0012\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u000e\u001a\u00020\r2\u0006\u0010\f\u001a\u00020\u0000H\u0096\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u0015\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\b¢\u0006\u0004\b\u0012\u0010\u0013J%\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001b\u001a\u00020\u001a¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u0016\u0010\t\u001a\u00020\b8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b\t\u0010 R\u0018\u0010!\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b!\u0010\"R\"\u0010#\u001a\u00020\r8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b#\u0010$\u001a\u0004\b%\u0010&\"\u0004\b'\u0010(R0\u0010/\u001a\b\u0012\u0002\b\u0003\u0018\u00010)2\f\u0010*\u001a\b\u0012\u0002\b\u0003\u0018\u00010)8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.¨\u00060"}, d2 = {"Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "", "Luc2;", "Lkia;", "", "Lkotlinx/coroutines/internal/SynchronizedObject;", "", "nanoTime", MethodDecl.initName, "(J)V", "other", "", "compareTo", "(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I", "now", "", "timeToExecute", "(J)Z", "Lkotlinx/coroutines/EventLoopImplBase$a;", "delayed", "Lkotlinx/coroutines/EventLoopImplBase;", "eventLoop", "scheduleTask", "(JLkotlinx/coroutines/EventLoopImplBase$a;Lkotlinx/coroutines/EventLoopImplBase;)I", "Lzfb;", "dispose", "()V", "", "toString", "()Ljava/lang/String;", "J", "_heap", "Ljava/lang/Object;", "index", "I", "getIndex", "()I", "setIndex", "(I)V", "Ljia;", ES6Iterator.VALUE_PROPERTY, "getHeap", "()Ljia;", "setHeap", "(Ljia;)V", "heap", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static abstract class DelayedTask implements Runnable, Comparable<DelayedTask>, uc2, kia {
        private volatile Object _heap;
        private int index = -1;
        public long nanoTime;

        public DelayedTask(long j) {
            this.nanoTime = j;
        }

        @Override
        public final void dispose() {
            synchronized (this) {
                try {
                    Object obj = this._heap;
                    if (obj == ae3.a) {
                        return;
                    }
                    a aVar = obj instanceof a ? (a) obj : null;
                    if (aVar != null) {
                        aVar.h(this);
                    }
                    this._heap = ae3.a;
                    zfb zfbVar = zfb.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override
        public jia getHeap() {
            Object obj = this._heap;
            if (obj instanceof jia) {
                return (jia) obj;
            }
            return null;
        }

        @Override
        public int getIndex() {
            return this.index;
        }

        public final int scheduleTask(long now, a delayed, EventLoopImplBase eventLoop) {
            synchronized (this) {
                if (this._heap == ae3.a) {
                    return 2;
                }
                synchronized (delayed) {
                    try {
                        DelayedTask delayedTask = (DelayedTask) delayed.b();
                        if (eventLoop.isCompleted()) {
                            return 1;
                        }
                        if (delayedTask == null) {
                            delayed.c = now;
                        } else {
                            long j = delayedTask.nanoTime;
                            if (j - now < 0) {
                                now = j;
                            }
                            if (now - delayed.c > 0) {
                                delayed.c = now;
                            }
                        }
                        long j2 = this.nanoTime;
                        long j3 = delayed.c;
                        if (j2 - j3 < 0) {
                            this.nanoTime = j3;
                        }
                        delayed.a(this);
                        return 0;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }

        @Override
        public void setHeap(jia jiaVar) {
            if (this._heap == ae3.a) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            this._heap = jiaVar;
        }

        @Override
        public void setIndex(int i) {
            this.index = i;
        }

        public final boolean timeToExecute(long now) {
            return now - this.nanoTime >= 0;
        }

        public String toString() {
            return "Delayed[nanos=" + this.nanoTime + ']';
        }

        @Override
        public int compareTo(DelayedTask other) {
            long j = this.nanoTime - other.nanoTime;
            if (j > 0) {
                return 1;
            }
            return j < 0 ? -1 : 0;
        }
    }

    public static final class a extends jia {
        public long c;

        public a(long j) {
            this.c = j;
        }
    }

    public final boolean isCompleted() {
        return _isCompleted$volatile$FU.get(this) != 0;
    }

    public final void E() {
        kia kiaVarI;
        a aVar = (a) _delayed$volatile$FU.get(this);
        if (aVar == null || aVar.e()) {
            return;
        }
        d4.a();
        long jNanoTime = System.nanoTime();
        do {
            synchronized (aVar) {
                try {
                    kia kiaVarB = aVar.b();
                    kiaVarI = null;
                    if (kiaVarB != null) {
                        DelayedTask delayedTask = (DelayedTask) kiaVarB;
                        kiaVarI = delayedTask.timeToExecute(jNanoTime) ? F(delayedTask) : false ? aVar.i(0) : null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } while (((DelayedTask) kiaVarI) != null);
    }

    public final boolean F(Runnable runnable) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _queue$volatile$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (isCompleted()) {
                return false;
            }
            if (obj == null) {
                if (u3.a(_queue$volatile$FU, this, null, runnable)) {
                    return true;
                }
            } else if (obj instanceof ro5) {
                y45.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable>");
                ro5 ro5Var = (ro5) obj;
                int iA = ro5Var.a(runnable);
                if (iA == 0) {
                    return true;
                }
                if (iA == 1) {
                    u3.a(_queue$volatile$FU, this, obj, ro5Var.l());
                } else if (iA == 2) {
                    return false;
                }
            } else {
                if (obj == ae3.b) {
                    return false;
                }
                ro5 ro5Var2 = new ro5(8, true);
                y45.h(obj, "null cannot be cast to non-null type java.lang.Runnable");
                ro5Var2.a((Runnable) obj);
                ro5Var2.a(runnable);
                if (u3.a(_queue$volatile$FU, this, obj, ro5Var2)) {
                    return true;
                }
            }
        }
    }

    public final void J() {
        DelayedTask delayedTask;
        d4.a();
        long jNanoTime = System.nanoTime();
        while (true) {
            a aVar = (a) _delayed$volatile$FU.get(this);
            if (aVar == null || (delayedTask = (DelayedTask) aVar.j()) == null) {
                return;
            } else {
                reschedule(jNanoTime, delayedTask);
            }
        }
    }

    public final int K(long j, DelayedTask delayedTask) {
        if (isCompleted()) {
            return 1;
        }
        a aVar = (a) _delayed$volatile$FU.get(this);
        if (aVar == null) {
            u3.a(_delayed$volatile$FU, this, null, new a(j));
            Object obj = _delayed$volatile$FU.get(this);
            y45.g(obj);
            aVar = (a) obj;
        }
        return delayedTask.scheduleTask(j, aVar, this);
    }

    public final void L(boolean z) {
        _isCompleted$volatile$FU.set(this, z ? 1 : 0);
    }

    public final boolean M(DelayedTask delayedTask) {
        a aVar = (a) _delayed$volatile$FU.get(this);
        return (aVar != null ? (DelayedTask) aVar.f() : null) == delayedTask;
    }

    public final void b() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _queue$volatile$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                if (u3.a(_queue$volatile$FU, this, null, ae3.b)) {
                    return;
                }
            } else if (obj instanceof ro5) {
                ((ro5) obj).d();
                return;
            } else {
                if (obj == ae3.b) {
                    return;
                }
                ro5 ro5Var = new ro5(8, true);
                y45.h(obj, "null cannot be cast to non-null type java.lang.Runnable");
                ro5Var.a((Runnable) obj);
                if (u3.a(_queue$volatile$FU, this, obj, ro5Var)) {
                    return;
                }
            }
        }
    }

    public Object delay(long j, wh1<? super zfb> wh1Var) {
        return e.a.a(this, j, wh1Var);
    }

    @Override
    public final void dispatch(kotlin.coroutines.d dVar, Runnable runnable) {
        enqueue(runnable);
    }

    public void enqueue(Runnable runnable) {
        E();
        if (F(runnable)) {
            unpark();
        } else {
            DefaultExecutor.INSTANCE.enqueue(runnable);
        }
    }

    @Override
    public long getNextTime() {
        DelayedTask delayedTask;
        if (super.getNextTime() == 0) {
            return 0L;
        }
        Object obj = _queue$volatile$FU.get(this);
        if (obj != null) {
            if (!(obj instanceof ro5)) {
                return obj == ae3.b ? Long.MAX_VALUE : 0L;
            }
            if (!((ro5) obj).j()) {
                return 0L;
            }
        }
        a aVar = (a) _delayed$volatile$FU.get(this);
        if (aVar == null || (delayedTask = (DelayedTask) aVar.f()) == null) {
            return Long.MAX_VALUE;
        }
        long j = delayedTask.nanoTime;
        d4.a();
        return wn8.e(j - System.nanoTime(), 0L);
    }

    public uc2 invokeOnTimeout(long j, Runnable runnable, kotlin.coroutines.d dVar) {
        return e.a.b(this, j, runnable, dVar);
    }

    public boolean isEmpty() {
        if (!isUnconfinedQueueEmpty()) {
            return false;
        }
        a aVar = (a) _delayed$volatile$FU.get(this);
        if (aVar != null && !aVar.e()) {
            return false;
        }
        Object obj = _queue$volatile$FU.get(this);
        if (obj != null) {
            if (obj instanceof ro5) {
                return ((ro5) obj).j();
            }
            if (obj != ae3.b) {
                return false;
            }
        }
        return true;
    }

    public final Runnable k() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _queue$volatile$FU;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                return null;
            }
            if (obj instanceof ro5) {
                y45.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable>");
                ro5 ro5Var = (ro5) obj;
                Object objM = ro5Var.m();
                if (objM != ro5.h) {
                    return (Runnable) objM;
                }
                u3.a(_queue$volatile$FU, this, obj, ro5Var.l());
            } else {
                if (obj == ae3.b) {
                    return null;
                }
                if (u3.a(_queue$volatile$FU, this, obj, null)) {
                    y45.h(obj, "null cannot be cast to non-null type java.lang.Runnable");
                    return (Runnable) obj;
                }
            }
        }
    }

    @Override
    public long processNextEvent() {
        if (processUnconfinedEvent()) {
            return 0L;
        }
        E();
        Runnable runnableK = k();
        if (runnableK == null) {
            return getNextTime();
        }
        runnableK.run();
        return 0L;
    }

    public final void resetAll() {
        _queue$volatile$FU.set(this, null);
        _delayed$volatile$FU.set(this, null);
    }

    public final void schedule(long j, DelayedTask delayedTask) {
        int iK = K(j, delayedTask);
        if (iK == 0) {
            if (M(delayedTask)) {
                unpark();
            }
        } else if (iK == 1) {
            reschedule(j, delayedTask);
        } else if (iK != 2) {
            throw new IllegalStateException("unexpected result");
        }
    }

    public final uc2 scheduleInvokeOnTimeout(long j, Runnable runnable) {
        long jC = ae3.c(j);
        if (jC >= 4611686018427387903L) {
            return k17.b;
        }
        d4.a();
        long jNanoTime = System.nanoTime();
        DelayedRunnableTask delayedRunnableTask = new DelayedRunnableTask(jC + jNanoTime, runnable);
        schedule(jNanoTime, delayedRunnableTask);
        return delayedRunnableTask;
    }

    @Override
    public void scheduleResumeAfterDelay(long j, cr0 cr0Var) {
        long jC = ae3.c(j);
        if (jC < 4611686018427387903L) {
            d4.a();
            long jNanoTime = System.nanoTime();
            DelayedResumeTask delayedResumeTask = new DelayedResumeTask(jC + jNanoTime, cr0Var);
            schedule(jNanoTime, delayedResumeTask);
            fr0.a(cr0Var, delayedResumeTask);
        }
    }

    @Override
    public void shutdown() {
        fia.a.c();
        L(true);
        b();
        while (processNextEvent() <= 0) {
        }
        J();
    }
}
