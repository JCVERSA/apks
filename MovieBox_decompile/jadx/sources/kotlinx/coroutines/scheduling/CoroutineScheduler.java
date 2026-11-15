package kotlinx.coroutines.scheduling;

import com.google.android.libraries.places.api.model.PlaceTypes;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.internal.u;
import kotlinx.coroutines.internal.z;
import kotlinx.coroutines.p0;

public final class CoroutineScheduler implements Executor, Closeable {

    public static final a f64949h = new a(null);

    private static final AtomicLongFieldUpdater f64950i = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack$volatile");

    private static final AtomicLongFieldUpdater f64951j = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState$volatile");

    private static final AtomicIntegerFieldUpdater f64952k = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated$volatile");

    public static final z f64953l = new z("NOT_IN_STACK");
    private volatile int _isTerminated$volatile;

    public final int f64954a;

    public final int f64955b;

    public final long f64956c;
    private volatile long controlState$volatile;

    public final String f64957d;

    public final c f64958e;

    public final c f64959f;

    public final u f64960g;
    private volatile long parkedWorkersStack$volatile;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "", "<init>", "(Ljava/lang/String;I)V", "CPU_ACQUIRED", "BLOCKING", "PARKING", "DORMANT", "TERMINATED", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public enum WorkerState {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        DORMANT,
        TERMINATED;

        private static final EnumEntries $ENTRIES = EnumEntriesKt.a(values());

        public static EnumEntries<WorkerState> getEntries() {
            return $ENTRIES;
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public class b {

        public static final int[] f64961a;

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
            f64961a = iArr;
        }
    }

    public CoroutineScheduler(int i10, int i11, long j10, String str) {
        this.f64954a = i10;
        this.f64955b = i11;
        this.f64956c = j10;
        this.f64957d = str;
        if (i10 < 1) {
            throw new IllegalArgumentException(("Core pool size " + i10 + " should be at least 1").toString());
        }
        if (i11 < i10) {
            throw new IllegalArgumentException(("Max pool size " + i11 + " should be greater than or equals to core pool size " + i10).toString());
        }
        if (i11 > 2097150) {
            throw new IllegalArgumentException(("Max pool size " + i11 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (j10 <= 0) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j10 + " must be positive").toString());
        }
        this.f64958e = new c();
        this.f64959f = new c();
        this.f64960g = new u((i10 + 1) * 2);
        this.controlState$volatile = ((long) i10) << 42;
        this._isTerminated$volatile = 0;
    }

    private final Task S(Worker worker, Task task, boolean z10) {
        WorkerState workerState;
        if (worker == null || (workerState = worker.state) == WorkerState.TERMINATED) {
            return task;
        }
        if (!task.taskContext && workerState == WorkerState.BLOCKING) {
            return task;
        }
        worker.mayHaveLocalTasks = true;
        return worker.localQueue.a(task, z10);
    }

    private final boolean T(long j10) {
        if (RangesKt.e(((int) (2097151 & j10)) - ((int) ((j10 & 4398044413952L) >> 21)), 0) < this.f64954a) {
            int iH = h();
            if (iH == 1 && this.f64954a > 1) {
                h();
            }
            if (iH > 0) {
                return true;
            }
        }
        return false;
    }

    static boolean W(CoroutineScheduler coroutineScheduler, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = f64951j.get(coroutineScheduler);
        }
        return coroutineScheduler.T(j10);
    }

    private final boolean X() {
        Worker workerS;
        do {
            workerS = s();
            if (workerS == null) {
                return false;
            }
        } while (!Worker.workerCtl$volatile$FU.compareAndSet(workerS, -1, 0));
        LockSupport.unpark(workerS);
        return true;
    }

    private final boolean f(Task task) {
        return task.taskContext ? this.f64959f.a(task) : this.f64958e.a(task);
    }

    private final int h() {
        synchronized (this.f64960g) {
            try {
                if (isTerminated()) {
                    return -1;
                }
                long j10 = f64951j.get(this);
                int i10 = (int) (j10 & 2097151);
                int iE = RangesKt.e(i10 - ((int) ((j10 & 4398044413952L) >> 21)), 0);
                if (iE >= this.f64954a) {
                    return 0;
                }
                if (i10 >= this.f64955b) {
                    return 0;
                }
                int i11 = ((int) (o().get(this) & 2097151)) + 1;
                if (i11 <= 0 || this.f64960g.b(i11) != null) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                Worker worker = new Worker(this, i11);
                this.f64960g.c(i11, worker);
                if (i11 != ((int) (2097151 & f64951j.incrementAndGet(this)))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                int i12 = iE + 1;
                worker.start();
                return i12;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final Worker k() {
        Thread threadCurrentThread = Thread.currentThread();
        Worker worker = threadCurrentThread instanceof Worker ? (Worker) threadCurrentThread : null;
        if (worker == null || !Intrinsics.c(CoroutineScheduler.this, this)) {
            return null;
        }
        return worker;
    }

    public static void m(CoroutineScheduler coroutineScheduler, Runnable runnable, boolean z10, boolean z11, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        if ((i10 & 4) != 0) {
            z11 = false;
        }
        coroutineScheduler.l(runnable, z10, z11);
    }

    public static final AtomicLongFieldUpdater o() {
        return f64951j;
    }

    private final int r(Worker worker) {
        Object nextParkedWorker = worker.getNextParkedWorker();
        while (nextParkedWorker != f64953l) {
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

    private final Worker s() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f64950i;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            Worker worker = (Worker) this.f64960g.b((int) (2097151 & j10));
            if (worker == null) {
                return null;
            }
            long j11 = (2097152 + j10) & (-2097152);
            int iR = r(worker);
            if (iR >= 0 && f64950i.compareAndSet(this, j10, ((long) iR) | j11)) {
                worker.setNextParkedWorker(f64953l);
                return worker;
            }
        }
    }

    private final void x(long j10, boolean z10) {
        if (z10 || X() || T(j10)) {
            return;
        }
        X();
    }

    @Override
    public void close() throws InterruptedException {
        w(10000L);
    }

    @Override
    public void execute(Runnable runnable) {
        m(this, runnable, false, false, 6, null);
    }

    public final boolean isTerminated() {
        return f64952k.get(this) != 0;
    }

    public final Task j(Runnable runnable, boolean z10) {
        long jA = g.f64976f.a();
        if (!(runnable instanceof Task)) {
            return g.b(runnable, jA, z10);
        }
        Task task = (Task) runnable;
        task.submissionTime = jA;
        task.taskContext = z10;
        return task;
    }

    public final void l(Runnable runnable, boolean z10, boolean z11) {
        kotlinx.coroutines.b bVar = kotlinx.coroutines.c.f64678a;
        if (bVar != null) {
            bVar.d();
        }
        Task taskJ = j(runnable, z10);
        boolean z12 = taskJ.taskContext;
        long jAddAndGet = z12 ? f64951j.addAndGet(this, 2097152L) : 0L;
        Worker workerK = k();
        Task taskS = S(workerK, taskJ, z11);
        if (taskS != null && !f(taskS)) {
            throw new RejectedExecutionException(this.f64957d + " was terminated");
        }
        boolean z13 = z11 && workerK != null;
        if (z12) {
            x(jAddAndGet, z13);
        } else {
            if (z13) {
                return;
            }
            y();
        }
    }

    public final boolean t(Worker worker) {
        long j10;
        int indexInArray;
        if (worker.getNextParkedWorker() != f64953l) {
            return false;
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = f64950i;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            indexInArray = worker.getIndexInArray();
            worker.setNextParkedWorker(this.f64960g.b((int) (2097151 & j10)));
        } while (!f64950i.compareAndSet(this, j10, ((2097152 + j10) & (-2097152)) | ((long) indexInArray)));
        return true;
    }

    public String toString() {
        ArrayList arrayList = new ArrayList();
        int iA = this.f64960g.a();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 1; i15 < iA; i15++) {
            Worker worker = (Worker) this.f64960g.b(i15);
            if (worker != null) {
                int i16 = worker.localQueue.i();
                int i17 = b.f64961a[worker.state.ordinal()];
                if (i17 == 1) {
                    i12++;
                } else if (i17 == 2) {
                    i11++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(i16);
                    sb2.append('b');
                    arrayList.add(sb2.toString());
                } else if (i17 == 3) {
                    i10++;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(i16);
                    sb3.append('c');
                    arrayList.add(sb3.toString());
                } else if (i17 == 4) {
                    i13++;
                    if (i16 > 0) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(i16);
                        sb4.append('d');
                        arrayList.add(sb4.toString());
                    }
                } else {
                    if (i17 != 5) {
                        throw new NoWhenBranchMatchedException();
                    }
                    i14++;
                }
            }
        }
        long j10 = f64951j.get(this);
        return this.f64957d + '@' + p0.b(this) + "[Pool Size {core = " + this.f64954a + ", max = " + this.f64955b + "}, Worker States {CPU = " + i10 + ", blocking = " + i11 + ", parked = " + i12 + ", dormant = " + i13 + ", terminated = " + i14 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f64958e.c() + ", global blocking queue size = " + this.f64959f.c() + ", Control State {created workers= " + ((int) (2097151 & j10)) + ", blocking tasks = " + ((int) ((4398044413952L & j10) >> 21)) + ", CPUs acquired = " + (this.f64954a - ((int) ((9223367638808264704L & j10) >> 42))) + "}]";
    }

    public final void u(Worker worker, int i10, int i11) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f64950i;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            int iR = (int) (2097151 & j10);
            long j11 = (2097152 + j10) & (-2097152);
            if (iR == i10) {
                iR = i11 == 0 ? r(worker) : i11;
            }
            if (iR >= 0 && f64950i.compareAndSet(this, j10, j11 | ((long) iR))) {
                return;
            }
        }
    }

    public final void v(Task task) {
        kotlinx.coroutines.b bVar;
        try {
            task.run();
            bVar = kotlinx.coroutines.c.f64678a;
            if (bVar == null) {
                return;
            }
        } catch (Throwable th2) {
            try {
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th2);
                bVar = kotlinx.coroutines.c.f64678a;
                if (bVar == null) {
                    return;
                }
            } catch (Throwable th3) {
                kotlinx.coroutines.b bVar2 = kotlinx.coroutines.c.f64678a;
                if (bVar2 != null) {
                    bVar2.e();
                }
                throw th3;
            }
        }
        bVar.e();
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005f  */
    public final void w(long j10) throws InterruptedException {
        int i10;
        Task taskFindTask;
        if (f64952k.compareAndSet(this, 0, 1)) {
            Worker workerK = k();
            synchronized (this.f64960g) {
                i10 = (int) (o().get(this) & 2097151);
            }
            if (1 <= i10) {
                int i11 = 1;
                while (true) {
                    Object objB = this.f64960g.b(i11);
                    Intrinsics.e(objB);
                    Worker worker = (Worker) objB;
                    if (worker != workerK) {
                        while (worker.getState() != Thread.State.TERMINATED) {
                            LockSupport.unpark(worker);
                            worker.join(j10);
                        }
                        worker.localQueue.j(this.f64959f);
                    }
                    if (i11 == i10) {
                        break;
                    } else {
                        i11++;
                    }
                }
            }
            this.f64959f.b();
            this.f64958e.b();
            while (true) {
                if (workerK == null) {
                    taskFindTask = (Task) this.f64958e.e();
                    if (taskFindTask == null && (taskFindTask = (Task) this.f64959f.e()) == null) {
                        break;
                    }
                } else {
                    taskFindTask = workerK.findTask(true);
                    if (taskFindTask == null) {
                        taskFindTask = (Task) this.f64958e.e();
                        if (taskFindTask == null) {
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
                v(taskFindTask);
            }
            if (workerK != null) {
                workerK.tryReleaseCpu(WorkerState.TERMINATED);
            }
            f64950i.set(this, 0L);
            f64951j.set(this, 0L);
        }
    }

    public final void y() {
        if (X() || W(this, 0L, 1, null)) {
            return;
        }
        X();
    }

    @Metadata(d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0080\u0004\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003B\u0011\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0002\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\fJ\u000f\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\tJ\u0017\u0010\u0011\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0013\u0010\fJ\u000f\u0010\u0014\u001a\u00020\nH\u0002¢\u0006\u0004\b\u0014\u0010\fJ\u0011\u0010\u0015\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u0017\u0010\u0016J\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0018\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0011\u0010\u001b\u001a\u0004\u0018\u00010\u000fH\u0002¢\u0006\u0004\b\u001b\u0010\u0016J\u001d\u0010\u001e\u001a\u0004\u0018\u00010\u000f2\n\u0010\u001d\u001a\u00060\u0004j\u0002`\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0015\u0010\"\u001a\u00020\u00072\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b\"\u0010#J\u000f\u0010$\u001a\u00020\nH\u0016¢\u0006\u0004\b$\u0010\fJ\r\u0010&\u001a\u00020%¢\u0006\u0004\b&\u0010'J\r\u0010(\u001a\u00020\u0007¢\u0006\u0004\b(\u0010\tJ\u0015\u0010*\u001a\u00020\u00042\u0006\u0010)\u001a\u00020\u0004¢\u0006\u0004\b*\u0010+J\u0017\u0010-\u001a\u0004\u0018\u00010\u000f2\u0006\u0010,\u001a\u00020\u0007¢\u0006\u0004\b-\u0010\u001aR*\u0010.\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00048\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b.\u0010/\u001a\u0004\b0\u00101\"\u0004\b2\u00103R\u0014\u00105\u001a\u0002048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b5\u00106R\u001c\u00108\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000f078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u0016\u0010:\u001a\u00020 8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b:\u0010;R\u0016\u0010<\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R$\u0010?\u001a\u0004\u0018\u00010>8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b?\u0010@\u001a\u0004\bA\u0010B\"\u0004\bC\u0010DR\u0016\u0010E\u001a\u00020%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010=R\u0016\u0010F\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bF\u0010/R\u0016\u0010,\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b,\u0010GR\u0012\u0010K\u001a\u00020H8Æ\u0002¢\u0006\u0006\u001a\u0004\bI\u0010JR\b\u0010M\u001a\u00020L8\u0006¨\u0006N"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;", "Ljava/lang/Thread;", "<init>", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V", "", "index", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V", "", "tryAcquireCpuPermit", "()Z", "", "runWorker", "()V", "tryPark", "inStack", "Lkotlinx/coroutines/scheduling/Task;", "task", "executeTask", "(Lkotlinx/coroutines/scheduling/Task;)V", PlaceTypes.PARK, "tryTerminateWorker", "findBlockingTask", "()Lkotlinx/coroutines/scheduling/Task;", "findCpuTask", "scanLocalQueue", "findAnyTask", "(Z)Lkotlinx/coroutines/scheduling/Task;", "pollGlobalQueues", "Lkotlinx/coroutines/scheduling/StealingMode;", "stealingMode", "trySteal", "(I)Lkotlinx/coroutines/scheduling/Task;", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "newState", "tryReleaseCpu", "(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z", "run", "", "runSingleTask", "()J", "isIo", "upperBound", "nextInt", "(I)I", "mayHaveLocalTasks", "findTask", "indexInArray", "I", "getIndexInArray", "()I", "setIndexInArray", "(I)V", "Lkotlinx/coroutines/scheduling/i;", "localQueue", "Lkotlinx/coroutines/scheduling/i;", "Lkotlin/jvm/internal/Ref$ObjectRef;", "stolenTask", "Lkotlin/jvm/internal/Ref$ObjectRef;", "state", "Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "terminationDeadline", "J", "", "nextParkedWorker", "Ljava/lang/Object;", "getNextParkedWorker", "()Ljava/lang/Object;", "setNextParkedWorker", "(Ljava/lang/Object;)V", "minDelayUntilStealableTaskNs", "rngState", "Z", "Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "getScheduler", "()Lkotlinx/coroutines/scheduling/CoroutineScheduler;", "scheduler", "Lkotlinx/atomicfu/AtomicInt;", "workerCtl", "kotlinx-coroutines-core"}, k = 1, mv = {2, 0, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    @SourceDebugExtension
    public final class Worker extends Thread {
        private static final AtomicIntegerFieldUpdater workerCtl$volatile$FU = AtomicIntegerFieldUpdater.newUpdater(Worker.class, "workerCtl$volatile");
        private volatile int indexInArray;

        @JvmField
        public final i localQueue;

        @JvmField
        public boolean mayHaveLocalTasks;
        private long minDelayUntilStealableTaskNs;
        private volatile Object nextParkedWorker;
        private int rngState;

        @JvmField
        public WorkerState state;
        private final Ref.ObjectRef<Task> stolenTask;
        private long terminationDeadline;
        private volatile int workerCtl$volatile;

        private Worker() {
            setDaemon(true);
            setContextClassLoader(CoroutineScheduler.this.getClass().getClassLoader());
            this.localQueue = new i();
            this.stolenTask = new Ref.ObjectRef<>();
            this.state = WorkerState.DORMANT;
            this.nextParkedWorker = CoroutineScheduler.f64953l;
            int iNanoTime = (int) System.nanoTime();
            this.rngState = iNanoTime == 0 ? 42 : iNanoTime;
        }

        private final void executeTask(Task task) {
            this.terminationDeadline = 0L;
            if (this.state == WorkerState.PARKING) {
                this.state = WorkerState.BLOCKING;
            }
            if (!task.taskContext) {
                CoroutineScheduler.this.v(task);
                return;
            }
            if (tryReleaseCpu(WorkerState.BLOCKING)) {
                CoroutineScheduler.this.y();
            }
            CoroutineScheduler.this.v(task);
            CoroutineScheduler.o().addAndGet(CoroutineScheduler.this, -2097152L);
            if (this.state != WorkerState.TERMINATED) {
                this.state = WorkerState.DORMANT;
            }
        }

        private final Task findAnyTask(boolean scanLocalQueue) {
            Task taskPollGlobalQueues;
            Task taskPollGlobalQueues2;
            if (scanLocalQueue) {
                boolean z10 = nextInt(CoroutineScheduler.this.f64954a * 2) == 0;
                if (z10 && (taskPollGlobalQueues2 = pollGlobalQueues()) != null) {
                    return taskPollGlobalQueues2;
                }
                Task taskK = this.localQueue.k();
                if (taskK != null) {
                    return taskK;
                }
                if (!z10 && (taskPollGlobalQueues = pollGlobalQueues()) != null) {
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
            Task task = (Task) CoroutineScheduler.this.f64959f.e();
            return task == null ? trySteal(1) : task;
        }

        private final Task findCpuTask() {
            Task taskN = this.localQueue.n();
            if (taskN != null) {
                return taskN;
            }
            Task task = (Task) CoroutineScheduler.this.f64959f.e();
            return task == null ? trySteal(2) : task;
        }

        private final int getWorkerCtl$volatile() {
            return this.workerCtl$volatile;
        }

        private final boolean inStack() {
            return this.nextParkedWorker != CoroutineScheduler.f64953l;
        }

        private final void park() {
            if (this.terminationDeadline == 0) {
                this.terminationDeadline = System.nanoTime() + CoroutineScheduler.this.f64956c;
            }
            LockSupport.parkNanos(CoroutineScheduler.this.f64956c);
            if (System.nanoTime() - this.terminationDeadline >= 0) {
                this.terminationDeadline = 0L;
                tryTerminateWorker();
            }
        }

        private final Task pollGlobalQueues() {
            if (nextInt(2) == 0) {
                Task task = (Task) CoroutineScheduler.this.f64958e.e();
                return task != null ? task : (Task) CoroutineScheduler.this.f64959f.e();
            }
            Task task2 = (Task) CoroutineScheduler.this.f64959f.e();
            return task2 != null ? task2 : (Task) CoroutineScheduler.this.f64958e.e();
        }

        private final void runWorker() {
            loop0: while (true) {
                boolean z10 = false;
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
                        if (z10) {
                            tryReleaseCpu(WorkerState.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.minDelayUntilStealableTaskNs);
                            this.minDelayUntilStealableTaskNs = 0L;
                            break;
                        }
                        z10 = true;
                    }
                }
            }
            tryReleaseCpu(WorkerState.TERMINATED);
        }

        private final void setWorkerCtl$volatile(int i10) {
            this.workerCtl$volatile = i10;
        }

        private final boolean tryAcquireCpuPermit() {
            long j10;
            if (this.state == WorkerState.CPU_ACQUIRED) {
                return true;
            }
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            AtomicLongFieldUpdater atomicLongFieldUpdaterO = CoroutineScheduler.o();
            do {
                j10 = atomicLongFieldUpdaterO.get(coroutineScheduler);
                if (((int) ((9223367638808264704L & j10) >> 42)) == 0) {
                    return false;
                }
            } while (!CoroutineScheduler.o().compareAndSet(coroutineScheduler, j10, j10 - 4398046511104L));
            this.state = WorkerState.CPU_ACQUIRED;
            return true;
        }

        private final void tryPark() {
            if (!inStack()) {
                CoroutineScheduler.this.t(this);
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
            int i10 = (int) (CoroutineScheduler.o().get(CoroutineScheduler.this) & 2097151);
            if (i10 < 2) {
                return null;
            }
            int iNextInt = nextInt(i10);
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            long jMin = Long.MAX_VALUE;
            for (int i11 = 0; i11 < i10; i11++) {
                iNextInt++;
                if (iNextInt > i10) {
                    iNextInt = 1;
                }
                Worker worker = (Worker) coroutineScheduler.f64960g.b(iNextInt);
                if (worker != null && worker != this) {
                    long jS = worker.localQueue.s(stealingMode, this.stolenTask);
                    if (jS == -1) {
                        Ref.ObjectRef<Task> objectRef = this.stolenTask;
                        Task task = objectRef.element;
                        objectRef.element = null;
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
            synchronized (coroutineScheduler.f64960g) {
                try {
                    if (coroutineScheduler.isTerminated()) {
                        return;
                    }
                    if (((int) (CoroutineScheduler.o().get(coroutineScheduler) & 2097151)) <= coroutineScheduler.f64954a) {
                        return;
                    }
                    if (workerCtl$volatile$FU.compareAndSet(this, -1, 1)) {
                        int i10 = this.indexInArray;
                        setIndexInArray(0);
                        coroutineScheduler.u(this, i10, 0);
                        int andDecrement = (int) (CoroutineScheduler.o().getAndDecrement(coroutineScheduler) & 2097151);
                        if (andDecrement != i10) {
                            Object objB = coroutineScheduler.f64960g.b(andDecrement);
                            Intrinsics.e(objB);
                            Worker worker = (Worker) objB;
                            coroutineScheduler.f64960g.c(i10, worker);
                            worker.setIndexInArray(i10);
                            coroutineScheduler.u(worker, andDecrement, i10);
                        }
                        coroutineScheduler.f64960g.c(andDecrement, null);
                        Unit unit = Unit.f64096a;
                        this.state = WorkerState.TERMINATED;
                    }
                } catch (Throwable th2) {
                    throw th2;
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
            int i10 = this.rngState;
            int i11 = i10 ^ (i10 << 13);
            int i12 = i11 ^ (i11 >> 17);
            int i13 = i12 ^ (i12 << 5);
            this.rngState = i13;
            int i14 = upperBound - 1;
            return (i14 & upperBound) == 0 ? i13 & i14 : (i13 & Integer.MAX_VALUE) % upperBound;
        }

        @Override
        public void run() {
            runWorker();
        }

        public final long runSingleTask() {
            boolean z10 = this.state == WorkerState.CPU_ACQUIRED;
            Task taskFindCpuTask = z10 ? findCpuTask() : findBlockingTask();
            if (taskFindCpuTask == null) {
                long j10 = this.minDelayUntilStealableTaskNs;
                if (j10 == 0) {
                    return -1L;
                }
                return j10;
            }
            CoroutineScheduler.this.v(taskFindCpuTask);
            if (!z10) {
                CoroutineScheduler.o().addAndGet(CoroutineScheduler.this, -2097152L);
            }
            return 0L;
        }

        public final void setIndexInArray(int i10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(CoroutineScheduler.this.f64957d);
            sb2.append("-worker-");
            sb2.append(i10 == 0 ? "TERMINATED" : String.valueOf(i10));
            setName(sb2.toString());
            this.indexInArray = i10;
        }

        public final void setNextParkedWorker(Object obj) {
            this.nextParkedWorker = obj;
        }

        public final boolean tryReleaseCpu(WorkerState newState) {
            WorkerState workerState = this.state;
            boolean z10 = workerState == WorkerState.CPU_ACQUIRED;
            if (z10) {
                CoroutineScheduler.o().addAndGet(CoroutineScheduler.this, 4398046511104L);
            }
            if (workerState != newState) {
                this.state = newState;
            }
            return z10;
        }

        public Worker(CoroutineScheduler coroutineScheduler, int i10) {
            this();
            setIndexInArray(i10);
        }
    }
}
