package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.Ref;

public final class i {

    private static final AtomicReferenceFieldUpdater f64978b = AtomicReferenceFieldUpdater.newUpdater(i.class, Object.class, "lastScheduledTask$volatile");

    private static final AtomicIntegerFieldUpdater f64979c = AtomicIntegerFieldUpdater.newUpdater(i.class, "producerIndex$volatile");

    private static final AtomicIntegerFieldUpdater f64980d = AtomicIntegerFieldUpdater.newUpdater(i.class, "consumerIndex$volatile");

    private static final AtomicIntegerFieldUpdater f64981e = AtomicIntegerFieldUpdater.newUpdater(i.class, "blockingTasksInBuffer$volatile");

    private final AtomicReferenceArray f64982a = new AtomicReferenceArray(128);
    private volatile int blockingTasksInBuffer$volatile;
    private volatile int consumerIndex$volatile;
    private volatile Object lastScheduledTask$volatile;
    private volatile int producerIndex$volatile;

    private final Task b(Task task) {
        if (e() == 127) {
            return task;
        }
        if (task.taskContext) {
            f64981e.incrementAndGet(this);
        }
        int i10 = f64979c.get(this) & 127;
        while (this.f64982a.get(i10) != null) {
            Thread.yield();
        }
        this.f64982a.lazySet(i10, task);
        f64979c.incrementAndGet(this);
        return null;
    }

    private final void c(Task task) {
        if (task == null || !task.taskContext) {
            return;
        }
        f64981e.decrementAndGet(this);
    }

    private final int e() {
        return f64979c.get(this) - f64980d.get(this);
    }

    private final Task m() {
        Task task;
        while (true) {
            int i10 = f64980d.get(this);
            if (i10 - f64979c.get(this) == 0) {
                return null;
            }
            int i11 = i10 & 127;
            if (f64980d.compareAndSet(this, i10, i10 + 1) && (task = (Task) this.f64982a.getAndSet(i11, null)) != null) {
                c(task);
                return task;
            }
        }
    }

    private final boolean o(c cVar) {
        Task taskM = m();
        if (taskM == null) {
            return false;
        }
        cVar.a(taskM);
        return true;
    }

    private final Task p(boolean z10) {
        Task task;
        do {
            task = (Task) f64978b.get(this);
            if (task == null || task.taskContext != z10) {
                int i10 = f64980d.get(this);
                int i11 = f64979c.get(this);
                while (i10 != i11) {
                    if (z10 && f64981e.get(this) == 0) {
                        return null;
                    }
                    i11--;
                    Task taskR = r(i11, z10);
                    if (taskR != null) {
                        return taskR;
                    }
                }
                return null;
            }
        } while (!androidx.concurrent.futures.a.a(f64978b, this, task, null));
        return task;
    }

    private final Task q(int i10) {
        int i11 = f64980d.get(this);
        int i12 = f64979c.get(this);
        boolean z10 = i10 == 1;
        while (i11 != i12) {
            if (z10 && f64981e.get(this) == 0) {
                return null;
            }
            int i13 = i11 + 1;
            Task taskR = r(i11, z10);
            if (taskR != null) {
                return taskR;
            }
            i11 = i13;
        }
        return null;
    }

    private final Task r(int i10, boolean z10) {
        int i11 = i10 & 127;
        Task task = (Task) this.f64982a.get(i11);
        if (task == null || task.taskContext != z10 || !kotlinx.coroutines.channels.i.a(this.f64982a, i11, task, null)) {
            return null;
        }
        if (z10) {
            f64981e.decrementAndGet(this);
        }
        return task;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object, kotlinx.coroutines.scheduling.Task] */
    private final long t(int i10, Ref.ObjectRef objectRef) {
        ?? r10;
        do {
            r10 = (Task) f64978b.get(this);
            if (r10 == 0) {
                return -2L;
            }
            if (((r10.taskContext ? 1 : 2) & i10) == 0) {
                return -2L;
            }
            long jA = g.f64976f.a() - r10.submissionTime;
            long j10 = g.f64972b;
            if (jA < j10) {
                return j10 - jA;
            }
        } while (!androidx.concurrent.futures.a.a(f64978b, this, r10, null));
        objectRef.element = r10;
        return -1L;
    }

    public final Task a(Task task, boolean z10) {
        if (z10) {
            return b(task);
        }
        Task task2 = (Task) f64978b.getAndSet(this, task);
        if (task2 == null) {
            return null;
        }
        return b(task2);
    }

    public final int i() {
        return f64978b.get(this) != null ? e() + 1 : e();
    }

    public final void j(c cVar) {
        Task task = (Task) f64978b.getAndSet(this, null);
        if (task != null) {
            cVar.a(task);
        }
        while (o(cVar)) {
        }
    }

    public final Task k() {
        Task task = (Task) f64978b.getAndSet(this, null);
        return task == null ? m() : task;
    }

    public final Task l() {
        return p(true);
    }

    public final Task n() {
        return p(false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long s(int i10, Ref.ObjectRef objectRef) {
        Task taskQ;
        T t10;
        Task taskM;
        if (i10 == 3) {
            taskM = m();
        } else {
            taskQ = q(i10);
        }
        if (t10 == 0) {
            t10 = taskQ;
            t10 = taskM;
            return t(i10, objectRef);
        }
        t10 = taskQ;
        t10 = taskM;
        objectRef.element = t10;
        return -1L;
    }
}
