package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference0Impl;
import kotlinx.coroutines.p0;

public class LockFreeLinkedListNode {

    private static final AtomicReferenceFieldUpdater f64875a = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_next$volatile");

    private static final AtomicReferenceFieldUpdater f64876b = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_prev$volatile");

    private static final AtomicReferenceFieldUpdater f64877c = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_removedRef$volatile");
    private volatile Object _next$volatile = this;
    private volatile Object _prev$volatile = this;
    private volatile Object _removedRef$volatile;

    private final LockFreeLinkedListNode g() {
        Object obj;
        while (true) {
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) f64876b.get(this);
            LockFreeLinkedListNode lockFreeLinkedListNode2 = lockFreeLinkedListNode;
            while (true) {
                LockFreeLinkedListNode lockFreeLinkedListNode3 = null;
                while (true) {
                    obj = f64875a.get(lockFreeLinkedListNode2);
                    if (obj == this) {
                        if (lockFreeLinkedListNode == lockFreeLinkedListNode2) {
                            return lockFreeLinkedListNode2;
                        }
                        if (!androidx.concurrent.futures.a.a(f64876b, this, lockFreeLinkedListNode, lockFreeLinkedListNode2)) {
                            break;
                        }
                        return lockFreeLinkedListNode2;
                    }
                    if (p()) {
                        return null;
                    }
                    if (!(obj instanceof t)) {
                        Intrinsics.f(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
                        lockFreeLinkedListNode3 = lockFreeLinkedListNode2;
                        lockFreeLinkedListNode2 = (LockFreeLinkedListNode) obj;
                    } else {
                        if (lockFreeLinkedListNode3 != null) {
                            break;
                        }
                        lockFreeLinkedListNode2 = (LockFreeLinkedListNode) f64876b.get(lockFreeLinkedListNode2);
                    }
                }
                if (!androidx.concurrent.futures.a.a(f64875a, lockFreeLinkedListNode3, lockFreeLinkedListNode2, ((t) obj).f64916a)) {
                    break;
                }
                lockFreeLinkedListNode2 = lockFreeLinkedListNode3;
            }
        }
    }

    private final LockFreeLinkedListNode h(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.p()) {
            lockFreeLinkedListNode = (LockFreeLinkedListNode) f64876b.get(lockFreeLinkedListNode);
        }
        return lockFreeLinkedListNode;
    }

    private final void i(LockFreeLinkedListNode lockFreeLinkedListNode) {
        LockFreeLinkedListNode lockFreeLinkedListNode2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f64876b;
        do {
            lockFreeLinkedListNode2 = (LockFreeLinkedListNode) atomicReferenceFieldUpdater.get(lockFreeLinkedListNode);
            if (j() != lockFreeLinkedListNode) {
                return;
            }
        } while (!androidx.concurrent.futures.a.a(f64876b, lockFreeLinkedListNode, lockFreeLinkedListNode2, this));
        if (p()) {
            lockFreeLinkedListNode.g();
        }
    }

    private final t s() {
        t tVar = (t) f64877c.get(this);
        if (tVar != null) {
            return tVar;
        }
        t tVar2 = new t(this);
        f64877c.set(this, tVar2);
        return tVar2;
    }

    public final boolean c(LockFreeLinkedListNode lockFreeLinkedListNode, int i10) {
        LockFreeLinkedListNode lockFreeLinkedListNodeL;
        do {
            lockFreeLinkedListNodeL = l();
            if (lockFreeLinkedListNodeL instanceof j) {
                return (((j) lockFreeLinkedListNodeL).f64894d & i10) == 0 && lockFreeLinkedListNodeL.c(lockFreeLinkedListNode, i10);
            }
        } while (!lockFreeLinkedListNodeL.d(lockFreeLinkedListNode, this));
        return true;
    }

    public final boolean d(LockFreeLinkedListNode lockFreeLinkedListNode, LockFreeLinkedListNode lockFreeLinkedListNode2) {
        f64876b.set(lockFreeLinkedListNode, this);
        f64875a.set(lockFreeLinkedListNode, lockFreeLinkedListNode2);
        if (!androidx.concurrent.futures.a.a(f64875a, this, lockFreeLinkedListNode2, lockFreeLinkedListNode)) {
            return false;
        }
        lockFreeLinkedListNode.i(lockFreeLinkedListNode2);
        return true;
    }

    public final boolean e(LockFreeLinkedListNode lockFreeLinkedListNode) {
        f64876b.set(lockFreeLinkedListNode, this);
        f64875a.set(lockFreeLinkedListNode, this);
        while (j() == this) {
            if (androidx.concurrent.futures.a.a(f64875a, this, this, lockFreeLinkedListNode)) {
                lockFreeLinkedListNode.i(this);
                return true;
            }
        }
        return false;
    }

    public final void f(int i10) {
        c(new j(i10), i10);
    }

    public final Object j() {
        return f64875a.get(this);
    }

    public final LockFreeLinkedListNode k() {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        Object objJ = j();
        t tVar = objJ instanceof t ? (t) objJ : null;
        if (tVar != null && (lockFreeLinkedListNode = tVar.f64916a) != null) {
            return lockFreeLinkedListNode;
        }
        Intrinsics.f(objJ, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        return (LockFreeLinkedListNode) objJ;
    }

    public final LockFreeLinkedListNode l() {
        LockFreeLinkedListNode lockFreeLinkedListNodeG = g();
        return lockFreeLinkedListNodeG == null ? h((LockFreeLinkedListNode) f64876b.get(this)) : lockFreeLinkedListNodeG;
    }

    public boolean p() {
        return j() instanceof t;
    }

    public boolean q() {
        return r() == null;
    }

    public final LockFreeLinkedListNode r() {
        Object objJ;
        LockFreeLinkedListNode lockFreeLinkedListNode;
        do {
            objJ = j();
            if (objJ instanceof t) {
                return ((t) objJ).f64916a;
            }
            if (objJ == this) {
                return (LockFreeLinkedListNode) objJ;
            }
            Intrinsics.f(objJ, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
            lockFreeLinkedListNode = (LockFreeLinkedListNode) objJ;
        } while (!androidx.concurrent.futures.a.a(f64875a, this, objJ, lockFreeLinkedListNode.s()));
        lockFreeLinkedListNode.g();
        return null;
    }

    public String toString() {
        return new PropertyReference0Impl(this) {
            @Override
            public Object get() {
                return p0.a(this.receiver);
            }
        } + '@' + p0.b(this);
    }
}
