package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.scheduling.Task;
import kotlinx.coroutines.scheduling.a;

public final class epc {
    public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(epc.class, Object.class, "lastScheduledTask$volatile");
    public static final AtomicIntegerFieldUpdater c = AtomicIntegerFieldUpdater.newUpdater(epc.class, "producerIndex$volatile");
    public static final AtomicIntegerFieldUpdater d = AtomicIntegerFieldUpdater.newUpdater(epc.class, "consumerIndex$volatile");
    public static final AtomicIntegerFieldUpdater e = AtomicIntegerFieldUpdater.newUpdater(epc.class, "blockingTasksInBuffer$volatile");
    public final AtomicReferenceArray a = new AtomicReferenceArray(128);
    private volatile int blockingTasksInBuffer$volatile;
    private volatile int consumerIndex$volatile;
    private volatile Object lastScheduledTask$volatile;
    private volatile int producerIndex$volatile;

    public final Task a(Task task, boolean z) {
        if (z) {
            return b(task);
        }
        Task task2 = (Task) b.getAndSet(this, task);
        if (task2 == null) {
            return null;
        }
        return b(task2);
    }

    public final Task b(Task task) {
        if (e() == 127) {
            return task;
        }
        if (task.taskContext) {
            e.incrementAndGet(this);
        }
        int i = c.get(this) & 127;
        while (this.a.get(i) != null) {
            Thread.yield();
        }
        this.a.lazySet(i, task);
        c.incrementAndGet(this);
        return null;
    }

    public final void c(Task task) {
        if (task == null || !task.taskContext) {
            return;
        }
        e.decrementAndGet(this);
    }

    public final int e() {
        return c.get(this) - d.get(this);
    }

    public final int i() {
        Object obj = b.get(this);
        int iE = e();
        return obj != null ? iE + 1 : iE;
    }

    public final void j(pi4 pi4Var) {
        Task task = (Task) b.getAndSet(this, null);
        if (task != null) {
            pi4Var.a(task);
        }
        while (o(pi4Var)) {
        }
    }

    public final Task k() {
        Task task = (Task) b.getAndSet(this, null);
        return task == null ? m() : task;
    }

    public final Task l() {
        return p(true);
    }

    public final Task m() {
        Task task;
        while (true) {
            int i = d.get(this);
            if (i - c.get(this) == 0) {
                return null;
            }
            int i2 = i & 127;
            if (d.compareAndSet(this, i, i + 1) && (task = (Task) this.a.getAndSet(i2, null)) != null) {
                c(task);
                return task;
            }
        }
    }

    public final Task n() {
        return p(false);
    }

    public final boolean o(pi4 pi4Var) {
        Task taskM = m();
        if (taskM == null) {
            return false;
        }
        pi4Var.a(taskM);
        return true;
    }

    public final Task p(boolean z) {
        Task task;
        do {
            task = (Task) b.get(this);
            if (task == null || task.taskContext != z) {
                int i = d.get(this);
                int i2 = c.get(this);
                while (i != i2) {
                    if (z && e.get(this) == 0) {
                        return null;
                    }
                    i2--;
                    Task taskR = r(i2, z);
                    if (taskR != null) {
                        return taskR;
                    }
                }
                return null;
            }
        } while (!u3.a(b, this, task, null));
        return task;
    }

    public final Task q(int i) {
        int i2 = d.get(this);
        int i3 = c.get(this);
        boolean z = i == 1;
        while (i2 != i3) {
            if (z && e.get(this) == 0) {
                return null;
            }
            int i4 = i2 + 1;
            Task taskR = r(i2, z);
            if (taskR != null) {
                return taskR;
            }
            i2 = i4;
        }
        return null;
    }

    public final Task r(int i, boolean z) {
        int i2 = i & 127;
        Task task = (Task) this.a.get(i2);
        if (task == null || task.taskContext != z || !du0.a(this.a, i2, task, null)) {
            return null;
        }
        if (z) {
            e.decrementAndGet(this);
        }
        return task;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long s(int i, Ref$ObjectRef ref$ObjectRef) {
        Task taskQ;
        T t;
        Task taskM;
        if (i == 3) {
            taskM = m();
        } else {
            taskQ = q(i);
        }
        if (t == 0) {
            t = taskQ;
            t = taskM;
            return t(i, ref$ObjectRef);
        }
        t = taskQ;
        t = taskM;
        ref$ObjectRef.element = t;
        return -1L;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object, kotlinx.coroutines.scheduling.Task] */
    public final long t(int i, Ref$ObjectRef ref$ObjectRef) {
        ?? r0;
        do {
            r0 = (Task) b.get(this);
            if (r0 == 0) {
                return -2L;
            }
            if (((r0.taskContext ? 1 : 2) & i) == 0) {
                return -2L;
            }
            long jA = a.f.a() - r0.submissionTime;
            long j = a.b;
            if (jA < j) {
                return j - jA;
            }
        } while (!u3.a(b, this, r0, null));
        ref$ObjectRef.element = r0;
        return -1L;
    }
}
