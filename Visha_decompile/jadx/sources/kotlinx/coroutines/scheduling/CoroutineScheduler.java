package kotlinx.coroutines.scheduling;

import android.support.v4.media.session.PlaybackStateCompat;
import com.transsion.livecaption.constant.ICode;
import defpackage.d4;
import defpackage.db3;
import defpackage.epc;
import defpackage.nt8;
import defpackage.pi4;
import defpackage.qt1;
import defpackage.wn8;
import defpackage.y45;
import defpackage.y7a;
import defpackage.zfb;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$ObjectRef;

public final class CoroutineScheduler implements Executor, Closeable {
    public static final a i = new a(null);
    public static final AtomicLongFieldUpdater j = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack$volatile");
    public static final AtomicLongFieldUpdater k = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState$volatile");
    public static final AtomicIntegerFieldUpdater l = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated$volatile");
    public static final y7a m = new y7a("NOT_IN_STACK");
    private volatile int _isTerminated$volatile;
    public final int b;
    public final int c;
    private volatile long controlState$volatile;
    public final long d;
    public final String e;
    public final pi4 f;
    public final pi4 g;
    public final nt8 h;
    private volatile long parkedWorkersStack$volatile;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "", MethodDecl.initName, "(Ljava/lang/String;I)V", "CPU_ACQUIRED", "BLOCKING", "PARKING", "DORMANT", "TERMINATED", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public enum WorkerState {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        DORMANT,
        TERMINATED;

        private static final db3 $ENTRIES = kotlin.enums.a.a(values());

        public static db3 getEntries() {
            return $ENTRIES;
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public class b {
        public static final int[] a;

        static {
            int[] iArr = new int[WorkerState.values().length];
            try {
                iArr[WorkerState.PARKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WorkerState.BLOCKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WorkerState.CPU_ACQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WorkerState.DORMANT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[WorkerState.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            a = iArr;
        }
    }

    public CoroutineScheduler(int i2, int i3, long j2, String str) {
        this.b = i2;
        this.c = i3;
        this.d = j2;
        this.e = str;
        if (i2 < 1) {
            throw new IllegalArgumentException(("Core pool size " + i2 + " should be at least 1").toString());
        }
        if (i3 < i2) {
            throw new IllegalArgumentException(("Max pool size " + i3 + " should be greater than or equals to core pool size " + i2).toString());
        }
        if (i3 > 2097150) {
            throw new IllegalArgumentException(("Max pool size " + i3 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j2 <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j2 + " must be positive").toString());
        }
        this.f = new pi4();
        this.g = new pi4();
        this.h = new nt8((i2 + 1) * 2);
        this.controlState$volatile = ((long) i2) << 42;
        this._isTerminated$volatile = 0;
    }

    public static boolean P(CoroutineScheduler coroutineScheduler, long j2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            j2 = k.get(coroutineScheduler);
        }
        return coroutineScheduler.O(j2);
    }

    public static void n(CoroutineScheduler coroutineScheduler, Runnable runnable, boolean z, boolean z2, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            z = false;
        }
        if ((i2 & 4) != 0) {
            z2 = false;
        }
        coroutineScheduler.k(runnable, z, z2);
    }

    public static final AtomicLongFieldUpdater o() {
        return k;
    }

    public final int F(Worker worker) {
        Object nextParkedWorker = worker.getNextParkedWorker();
        while (nextParkedWorker != m) {
            if (nextParkedWorker == null) {
                return 0;
            }
            Worker worker2 = (Worker) nextParkedWorker;
            int indexInArray = worker2.getIndexInArray();
            if (indexInArray != 0) {
                return indexInArray;
            }
            nextParkedWorker = worker2.getNextParkedWorker();
        }
        return -1;
    }

    public final Worker G() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = j;
        while (true) {
            long j2 = atomicLongFieldUpdater.get(this);
            Worker worker = (Worker) this.h.b((int) (2097151 & j2));
            if (worker == null) {
                return null;
            }
            long j3 = (PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j2) & (-2097152);
            int iF = F(worker);
            if (iF >= 0 && j.compareAndSet(this, j2, ((long) iF) | j3)) {
                worker.setNextParkedWorker(m);
                return worker;
            }
        }
    }

    public final boolean H(Worker worker) {
        long j2;
        long j3;
        int indexInArray;
        if (worker.getNextParkedWorker() != m) {
            return false;
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = j;
        do {
            j2 = atomicLongFieldUpdater.get(this);
            j3 = (PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j2) & (-2097152);
            indexInArray = worker.getIndexInArray();
            worker.setNextParkedWorker(this.h.b((int) (2097151 & j2)));
        } while (!j.compareAndSet(this, j2, j3 | ((long) indexInArray)));
        return true;
    }

    public final void I(Worker worker, int i2, int i3) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = j;
        while (true) {
            long j2 = atomicLongFieldUpdater.get(this);
            int iF = (int) (2097151 & j2);
            long j3 = (PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE + j2) & (-2097152);
            if (iF == i2) {
                iF = i3 == 0 ? F(worker) : i3;
            }
            if (iF >= 0 && j.compareAndSet(this, j2, j3 | ((long) iF))) {
                return;
            }
        }
    }

    public final void J(Task task) {
        try {
            task.run();
        } catch (Throwable th) {
            try {
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
            } finally {
                d4.a();
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005f  */
    public final void K(long j2) throws InterruptedException {
        int i2;
        Task taskFindTask;
        if (l.compareAndSet(this, 0, 1)) {
            Worker workerH = h();
            synchronized (this.h) {
                i2 = (int) (o().get(this) & 2097151);
            }
            if (1 <= i2) {
                int i3 = 1;
                while (true) {
                    Object objB = this.h.b(i3);
                    y45.g(objB);
                    Worker worker = (Worker) objB;
                    if (worker != workerH) {
                        while (worker.getState() != Thread.State.TERMINATED) {
                            LockSupport.unpark(worker);
                            worker.join(j2);
                        }
                        worker.localQueue.j(this.g);
                    }
                    if (i3 == i2) {
                        break;
                    } else {
                        i3++;
                    }
                }
            }
            this.g.b();
            this.f.b();
            while (true) {
                if (workerH == null) {
                    taskFindTask = (Task) this.f.e();
                    if (taskFindTask == null && (taskFindTask = (Task) this.g.e()) == null) {
                        break;
                    }
                } else {
                    taskFindTask = workerH.findTask(true);
                    if (taskFindTask == null) {
                        taskFindTask = (Task) this.f.e();
                        if (taskFindTask == null) {
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
                J(taskFindTask);
            }
            if (workerH != null) {
                workerH.tryReleaseCpu(WorkerState.TERMINATED);
            }
            j.set(this, 0L);
            k.set(this, 0L);
        }
    }

    public final void L(long j2, boolean z) {
        if (z || Q() || O(j2)) {
            return;
        }
        Q();
    }

    public final void M() {
        if (Q() || P(this, 0L, 1, null)) {
            return;
        }
        Q();
    }

    public final Task N(Worker worker, Task task, boolean z) {
        WorkerState workerState;
        if (worker == null || (workerState = worker.state) == WorkerState.TERMINATED) {
            return task;
        }
        if (!task.taskContext && workerState == WorkerState.BLOCKING) {
            return task;
        }
        worker.mayHaveLocalTasks = true;
        return worker.localQueue.a(task, z);
    }

    public final boolean O(long j2) {
        if (wn8.d(((int) (2097151 & j2)) - ((int) ((j2 & 4398044413952L) >> 21)), 0) < this.b) {
            int iE = e();
            if (iE == 1 && this.b > 1) {
                e();
            }
            if (iE > 0) {
                return true;
            }
        }
        return false;
    }

    public final boolean Q() {
        Worker workerG;
        do {
            workerG = G();
            if (workerG == null) {
                return false;
            }
        } while (!Worker.workerCtl$volatile$FU.compareAndSet(workerG, -1, 0));
        LockSupport.unpark(workerG);
        return true;
    }

    @Override
    public void close() throws InterruptedException {
        K(10000L);
    }

    public final boolean d(Task task) {
        return task.taskContext ? this.g.a(task) : this.f.a(task);
    }

    public final int e() {
        synchronized (this.h) {
            try {
                if (isTerminated()) {
                    return -1;
                }
                long j2 = k.get(this);
                int i2 = (int) (j2 & 2097151);
                int iD = wn8.d(i2 - ((int) ((j2 & 4398044413952L) >> 21)), 0);
                if (iD >= this.b) {
                    return 0;
                }
                if (i2 >= this.c) {
                    return 0;
                }
                int i3 = ((int) (o().get(this) & 2097151)) + 1;
                if (i3 <= 0 || this.h.b(i3) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                Worker worker = new Worker(this, i3);
                this.h.c(i3, worker);
                if (i3 != ((int) (2097151 & k.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i4 = iD + 1;
                worker.start();
                return i4;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override
    public void execute(Runnable runnable) {
        n(this, runnable, false, false, 6, null);
    }

    public final Task g(Runnable runnable, boolean z) {
        long jA = kotlinx.coroutines.scheduling.a.f.a();
        if (!(runnable instanceof Task)) {
            return kotlinx.coroutines.scheduling.a.b(runnable, jA, z);
        }
        Task task = (Task) runnable;
        task.submissionTime = jA;
        task.taskContext = z;
        return task;
    }

    public final Worker h() {
        Thread threadCurrentThread = Thread.currentThread();
        Worker worker = threadCurrentThread instanceof Worker ? (Worker) threadCurrentThread : null;
        if (worker == null || !y45.e(CoroutineScheduler.this, this)) {
            return null;
        }
        return worker;
    }

    public final boolean isTerminated() {
        return l.get(this) != 0;
    }

    public final void k(Runnable runnable, boolean z, boolean z2) {
        d4.a();
        Task taskG = g(runnable, z);
        boolean z3 = taskG.taskContext;
        long jAddAndGet = z3 ? k.addAndGet(this, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE) : 0L;
        Worker workerH = h();
        Task taskN = N(workerH, taskG, z2);
        if (taskN != null && !d(taskN)) {
            throw new RejectedExecutionException(this.e + " was terminated");
        }
        boolean z4 = z2 && workerH != null;
        if (z3) {
            L(jAddAndGet, z4);
        } else {
            if (z4) {
                return;
            }
            M();
        }
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        int iA = this.h.a();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        for (int i7 = 1; i7 < iA; i7++) {
            Worker worker = (Worker) this.h.b(i7);
            if (worker != null) {
                int i8 = worker.localQueue.i();
                int i9 = b.a[worker.state.ordinal()];
                if (i9 == 1) {
                    i4++;
                } else if (i9 == 2) {
                    i3++;
                    StringBuilder sb = new StringBuilder();
                    sb.append(i8);
                    sb.append('b');
                    arrayList.add(sb.toString());
                } else if (i9 == 3) {
                    i2++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i8);
                    sb2.append('c');
                    arrayList.add(sb2.toString());
                } else if (i9 == 4) {
                    i5++;
                    if (i8 > 0) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append(i8);
                        sb3.append('d');
                        arrayList.add(sb3.toString());
                    }
                } else {
                    if (i9 != 5) {
                        throw new NoWhenBranchMatchedException();
                    }
                    i6++;
                }
            }
        }
        long j2 = k.get(this);
        return this.e + '@' + qt1.b(this) + "[Pool Size {core = " + this.b + ", max = " + this.c + "}, Worker States {CPU = " + i2 + ", blocking = " + i3 + ", parked = " + i4 + ", dormant = " + i5 + ", terminated = " + i6 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f.c() + ", global blocking queue size = " + this.g.c() + ", Control State {created workers= " + ((int) (2097151 & j2)) + ", blocking tasks = " + ((int) ((4398044413952L & j2) >> 21)) + ", CPUs acquired = " + (this.b - ((int) ((9223367638808264704L & j2) >> 42))) + "}]";
    }

    @Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0080\u0004\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\tJ\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0013\u0010\fJ\u000f\u0010\u0014\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0014\u0010\fJ\u0011\u0010\u0015\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0017\u0010\u0016J\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0018\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u001b\u0010\u0016J\u001d\u0010\u001e\u001a\u0004\u0018\u00010\u000f2\n\u0010\u001d\u001a\u00060\u0004j\u0002`\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010\"\u001a\u00020\u00072\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\nH\u0016¢\u0006\u0004\b$\u0010\fJ\r\u0010&\u001a\u00020%¢\u0006\u0004\b&\u0010'J\r\u0010(\u001a\u00020\u0007¢\u0006\u0004\b(\u0010\tJ\u0015\u0010*\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u0004¢\u0006\u0004\b*\u0010+J\u0017\u0010-\u001a\u0004\u0018\u00010\u000f2\u0006\u0010,\u001a\u00020\u0007¢\u0006\u0004\b-\u0010\u001aR*\u0010.\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u0014\u00105\u001a\u0002048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u001c\u00108\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010:\u001a\u00020 8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010<\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R$\u0010?\u001a\u0004\u0018\u00010>8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u0016\u0010E\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010=R\u0016\u0010F\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010/R\u0016\u0010,\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b,\u0010GR\u0012\u0010K\u001a\u00020H8Æ\u0002¢\u0006\u0006\u001a\u0004\bI\u0010JR\b\u0010M\u001a\u00020L8\u0006¨\u0006N"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "Ljava/lang/Thread;", MethodDecl.initName, "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V", "", "index", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V", "", "tryAcquireCpuPermit", "()Z", "Lzfb;", "runWorker", "()V", "tryPark", "inStack", "Lkotlinx/coroutines/scheduling/Task;", "task", "executeTask", "(Lkotlinx/coroutines/scheduling/Task;)V", "park", "tryTerminateWorker", "findBlockingTask", "()Lkotlinx/coroutines/scheduling/Task;", "findCpuTask", "scanLocalQueue", "findAnyTask", "(Z)Lkotlinx/coroutines/scheduling/Task;", "pollGlobalQueues", "Lkotlinx/coroutines/scheduling/StealingMode;", "stealingMode", "trySteal", "(I)Lkotlinx/coroutines/scheduling/Task;", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "newState", "tryReleaseCpu", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z", "run", "", "runSingleTask", "()J", "isIo", "upperBound", "nextInt", "(I)I", "mayHaveLocalTasks", "findTask", "indexInArray", "I", "getIndexInArray", "()I", "setIndexInArray", "(I)V", "Lepc;", "localQueue", "Lepc;", "Lkotlin/jvm/internal/Ref$ObjectRef;", "stolenTask", "Lkotlin/jvm/internal/Ref$ObjectRef;", ICode.CALL.CALL_KEY_STATE, "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "terminationDeadline", "J", "", "nextParkedWorker", "Ljava/lang/Object;", "getNextParkedWorker", "()Ljava/lang/Object;", "setNextParkedWorker", "(Ljava/lang/Object;)V", "minDelayUntilStealableTaskNs", "rngState", "Z", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "getScheduler", "()Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "scheduler", "Lkotlinx/atomicfu/AtomicInt;", "workerCtl", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public final class Worker extends Thread {
        private static final AtomicIntegerFieldUpdater workerCtl$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(Worker.class, "workerCtl$volatile");
        private volatile int indexInArray;
        public final epc localQueue;
        public boolean mayHaveLocalTasks;
        private long minDelayUntilStealableTaskNs;
        private volatile Object nextParkedWorker;
        private int rngState;
        public WorkerState state;
        private final Ref$ObjectRef<Task> stolenTask;
        private long terminationDeadline;
        private volatile int workerCtl$volatile;

        private Worker() {
            setDaemon(true);
            setContextClassLoader(CoroutineScheduler.this.getClass().getClassLoader());
            this.localQueue = new epc();
            this.stolenTask = new Ref$ObjectRef<>();
            this.state = WorkerState.DORMANT;
            this.nextParkedWorker = CoroutineScheduler.m;
            int iNanoTime = (int) System.nanoTime();
            this.rngState = iNanoTime == 0 ? 42 : iNanoTime;
        }

        private final void executeTask(Task task) {
            this.terminationDeadline = 0L;
            if (this.state == WorkerState.PARKING) {
                this.state = WorkerState.BLOCKING;
            }
            if (!task.taskContext) {
                CoroutineScheduler.this.J(task);
                return;
            }
            if (tryReleaseCpu(WorkerState.BLOCKING)) {
                CoroutineScheduler.this.M();
            }
            CoroutineScheduler.this.J(task);
            CoroutineScheduler.o().addAndGet(CoroutineScheduler.this, -2097152L);
            if (this.state != WorkerState.TERMINATED) {
                this.state = WorkerState.DORMANT;
            }
        }

        private final Task findAnyTask(boolean scanLocalQueue) {
            Task taskPollGlobalQueues;
            Task taskPollGlobalQueues2;
            if (scanLocalQueue) {
                boolean z = nextInt(CoroutineScheduler.this.b * 2) == 0;
                if (z && (taskPollGlobalQueues2 = pollGlobalQueues()) != null) {
                    return taskPollGlobalQueues2;
                }
                Task taskK = this.localQueue.k();
                if (taskK != null) {
                    return taskK;
                }
                if (!z && (taskPollGlobalQueues = pollGlobalQueues()) != null) {
                    return taskPollGlobalQueues;
                }
            } else {
                Task taskPollGlobalQueues3 = pollGlobalQueues();
                if (taskPollGlobalQueues3 != null) {
                    return taskPollGlobalQueues3;
                }
            }
            return trySteal(3);
        }

        private final Task findBlockingTask() {
            Task taskL = this.localQueue.l();
            if (taskL != null) {
                return taskL;
            }
            Task task = (Task) CoroutineScheduler.this.g.e();
            return task == null ? trySteal(1) : task;
        }

        private final Task findCpuTask() {
            Task taskN = this.localQueue.n();
            if (taskN != null) {
                return taskN;
            }
            Task task = (Task) CoroutineScheduler.this.g.e();
            return task == null ? trySteal(2) : task;
        }

        private final int getWorkerCtl$volatile() {
            return this.workerCtl$volatile;
        }

        private final boolean inStack() {
            return this.nextParkedWorker != CoroutineScheduler.m;
        }

        private final void park() {
            if (this.terminationDeadline == 0) {
                this.terminationDeadline = System.nanoTime() + CoroutineScheduler.this.d;
            }
            LockSupport.parkNanos(CoroutineScheduler.this.d);
            if (System.nanoTime() - this.terminationDeadline >= 0) {
                this.terminationDeadline = 0L;
                tryTerminateWorker();
            }
        }

        private final Task pollGlobalQueues() {
            if (nextInt(2) == 0) {
                Task task = (Task) CoroutineScheduler.this.f.e();
                return task != null ? task : (Task) CoroutineScheduler.this.g.e();
            }
            Task task2 = (Task) CoroutineScheduler.this.g.e();
            return task2 != null ? task2 : (Task) CoroutineScheduler.this.f.e();
        }

        private final void runWorker() {
            loop0: while (true) {
                boolean z = false;
                while (true) {
                    if (CoroutineScheduler.this.isTerminated() || this.state == WorkerState.TERMINATED) {
                        break loop0;
                    }
                    Task taskFindTask = findTask(this.mayHaveLocalTasks);
                    if (taskFindTask != null) {
                        this.minDelayUntilStealableTaskNs = 0L;
                        executeTask(taskFindTask);
                        break;
                    }
                    this.mayHaveLocalTasks = false;
                    if (this.minDelayUntilStealableTaskNs == 0) {
                        tryPark();
                    } else {
                        if (z) {
                            tryReleaseCpu(WorkerState.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.minDelayUntilStealableTaskNs);
                            this.minDelayUntilStealableTaskNs = 0L;
                            break;
                        }
                        z = true;
                    }
                }
            }
            tryReleaseCpu(WorkerState.TERMINATED);
        }

        private final void setWorkerCtl$volatile(int i) {
            this.workerCtl$volatile = i;
        }

        private final boolean tryAcquireCpuPermit() {
            long j;
            if (this.state == WorkerState.CPU_ACQUIRED) {
                return true;
            }
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            AtomicLongFieldUpdater atomicLongFieldUpdaterO = CoroutineScheduler.o();
            do {
                j = atomicLongFieldUpdaterO.get(coroutineScheduler);
                if (((int) ((9223367638808264704L & j) >> 42)) == 0) {
                    return false;
                }
            } while (!CoroutineScheduler.o().compareAndSet(coroutineScheduler, j, j - 4398046511104L));
            this.state = WorkerState.CPU_ACQUIRED;
            return true;
        }

        private final void tryPark() {
            if (!inStack()) {
                CoroutineScheduler.this.H(this);
                return;
            }
            workerCtl$volatile$FU.set(this, -1);
            while (inStack() && workerCtl$volatile$FU.get(this) == -1 && !CoroutineScheduler.this.isTerminated() && this.state != WorkerState.TERMINATED) {
                tryReleaseCpu(WorkerState.PARKING);
                Thread.interrupted();
                park();
            }
        }

        private final Task trySteal(int stealingMode) {
            int i = (int) (CoroutineScheduler.o().get(CoroutineScheduler.this) & 2097151);
            if (i < 2) {
                return null;
            }
            int iNextInt = nextInt(i);
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            long jMin = Long.MAX_VALUE;
            for (int i2 = 0; i2 < i; i2++) {
                iNextInt++;
                if (iNextInt > i) {
                    iNextInt = 1;
                }
                Worker worker = (Worker) coroutineScheduler.h.b(iNextInt);
                if (worker != null && worker != this) {
                    long jS = worker.localQueue.s(stealingMode, this.stolenTask);
                    if (jS == -1) {
                        Ref$ObjectRef<Task> ref$ObjectRef = this.stolenTask;
                        Task task = ref$ObjectRef.element;
                        ref$ObjectRef.element = null;
                        return task;
                    }
                    if (jS > 0) {
                        jMin = Math.min(jMin, jS);
                    }
                }
            }
            if (jMin == Long.MAX_VALUE) {
                jMin = 0;
            }
            this.minDelayUntilStealableTaskNs = jMin;
            return null;
        }

        private final void tryTerminateWorker() {
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            synchronized (coroutineScheduler.h) {
                try {
                    if (coroutineScheduler.isTerminated()) {
                        return;
                    }
                    if (((int) (CoroutineScheduler.o().get(coroutineScheduler) & 2097151)) <= coroutineScheduler.b) {
                        return;
                    }
                    if (workerCtl$volatile$FU.compareAndSet(this, -1, 1)) {
                        int i = this.indexInArray;
                        setIndexInArray(0);
                        coroutineScheduler.I(this, i, 0);
                        int andDecrement = (int) (CoroutineScheduler.o().getAndDecrement(coroutineScheduler) & 2097151);
                        if (andDecrement != i) {
                            Object objB = coroutineScheduler.h.b(andDecrement);
                            y45.g(objB);
                            Worker worker = (Worker) objB;
                            coroutineScheduler.h.c(i, worker);
                            worker.setIndexInArray(i);
                            coroutineScheduler.I(worker, andDecrement, i);
                        }
                        coroutineScheduler.h.c(andDecrement, null);
                        zfb zfbVar = zfb.a;
                        this.state = WorkerState.TERMINATED;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public final Task findTask(boolean mayHaveLocalTasks) {
            return tryAcquireCpuPermit() ? findAnyTask(mayHaveLocalTasks) : findBlockingTask();
        }

        public final int getIndexInArray() {
            return this.indexInArray;
        }

        public final Object getNextParkedWorker() {
            return this.nextParkedWorker;
        }

        public final CoroutineScheduler getScheduler() {
            return CoroutineScheduler.this;
        }

        public final boolean isIo() {
            return this.state == WorkerState.BLOCKING;
        }

        public final int nextInt(int upperBound) {
            int i = this.rngState;
            int i2 = i ^ (i << 13);
            int i3 = i2 ^ (i2 >> 17);
            int i4 = i3 ^ (i3 << 5);
            this.rngState = i4;
            int i5 = upperBound - 1;
            return (i5 & upperBound) == 0 ? i5 & i4 : (Integer.MAX_VALUE & i4) % upperBound;
        }

        @Override
        public void run() {
            runWorker();
        }

        public final long runSingleTask() {
            boolean z = this.state == WorkerState.CPU_ACQUIRED;
            Task taskFindCpuTask = z ? findCpuTask() : findBlockingTask();
            if (taskFindCpuTask == null) {
                long j = this.minDelayUntilStealableTaskNs;
                if (j == 0) {
                    return -1L;
                }
                return j;
            }
            CoroutineScheduler.this.J(taskFindCpuTask);
            if (!z) {
                CoroutineScheduler.o().addAndGet(CoroutineScheduler.this, -2097152L);
            }
            return 0L;
        }

        public final void setIndexInArray(int i) {
            StringBuilder sb = new StringBuilder();
            sb.append(CoroutineScheduler.this.e);
            sb.append("-worker-");
            sb.append(i == 0 ? "TERMINATED" : String.valueOf(i));
            setName(sb.toString());
            this.indexInArray = i;
        }

        public final void setNextParkedWorker(Object obj) {
            this.nextParkedWorker = obj;
        }

        public final boolean tryReleaseCpu(WorkerState newState) {
            WorkerState workerState = this.state;
            boolean z = workerState == WorkerState.CPU_ACQUIRED;
            if (z) {
                CoroutineScheduler.o().addAndGet(CoroutineScheduler.this, 4398046511104L);
            }
            if (workerState != newState) {
                this.state = newState;
            }
            return z;
        }

        public Worker(CoroutineScheduler coroutineScheduler, int i) {
            this();
            setIndexInArray(i);
        }
    }
}
