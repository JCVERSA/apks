package kotlinx.coroutines.internal;

import defpackage.es8;
import defpackage.ql5;
import defpackage.qt1;
import defpackage.u3;
import defpackage.y45;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.PropertyReference0Impl;

public class LockFreeLinkedListNode {
    public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_next$volatile");
    public static final AtomicReferenceFieldUpdater c = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_prev$volatile");
    public static final AtomicReferenceFieldUpdater d = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_removedRef$volatile");
    private volatile Object _next$volatile = this;
    private volatile Object _prev$volatile = this;
    private volatile Object _removedRef$volatile;

    public final boolean c(LockFreeLinkedListNode lockFreeLinkedListNode, int i) {
        LockFreeLinkedListNode lockFreeLinkedListNodeL;
        do {
            lockFreeLinkedListNodeL = l();
            if (lockFreeLinkedListNodeL instanceof ql5) {
                return (((ql5) lockFreeLinkedListNodeL).e & i) == 0 && lockFreeLinkedListNodeL.c(lockFreeLinkedListNode, i);
            }
        } while (!lockFreeLinkedListNodeL.d(lockFreeLinkedListNode, this));
        return true;
    }

    public final boolean d(LockFreeLinkedListNode lockFreeLinkedListNode, LockFreeLinkedListNode lockFreeLinkedListNode2) {
        c.set(lockFreeLinkedListNode, this);
        b.set(lockFreeLinkedListNode, lockFreeLinkedListNode2);
        if (!u3.a(b, this, lockFreeLinkedListNode2, lockFreeLinkedListNode)) {
            return false;
        }
        lockFreeLinkedListNode.i(lockFreeLinkedListNode2);
        return true;
    }

    public final boolean e(LockFreeLinkedListNode lockFreeLinkedListNode) {
        c.set(lockFreeLinkedListNode, this);
        b.set(lockFreeLinkedListNode, this);
        while (j() == this) {
            if (u3.a(b, this, this, lockFreeLinkedListNode)) {
                lockFreeLinkedListNode.i(this);
                return true;
            }
        }
        return false;
    }

    public final void f(int i) {
        c(new ql5(i), i);
    }

    public final LockFreeLinkedListNode g() {
        Object obj;
        while (true) {
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) c.get(this);
            LockFreeLinkedListNode lockFreeLinkedListNode2 = lockFreeLinkedListNode;
            while (true) {
                LockFreeLinkedListNode lockFreeLinkedListNode3 = null;
                while (true) {
                    obj = b.get(lockFreeLinkedListNode2);
                    if (obj == this) {
                        if (lockFreeLinkedListNode != lockFreeLinkedListNode2 && !u3.a(c, this, lockFreeLinkedListNode, lockFreeLinkedListNode2)) {
                            break;
                        }
                        return lockFreeLinkedListNode2;
                    }
                    if (p()) {
                        return null;
                    }
                    if (!(obj instanceof es8)) {
                        y45.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
                        lockFreeLinkedListNode3 = lockFreeLinkedListNode2;
                        lockFreeLinkedListNode2 = (LockFreeLinkedListNode) obj;
                    } else {
                        if (lockFreeLinkedListNode3 != null) {
                            break;
                        }
                        lockFreeLinkedListNode2 = (LockFreeLinkedListNode) c.get(lockFreeLinkedListNode2);
                    }
                }
                if (!u3.a(b, lockFreeLinkedListNode3, lockFreeLinkedListNode2, ((es8) obj).a)) {
                    break;
                }
                lockFreeLinkedListNode2 = lockFreeLinkedListNode3;
            }
        }
    }

    public final LockFreeLinkedListNode h(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.p()) {
            lockFreeLinkedListNode = (LockFreeLinkedListNode) c.get(lockFreeLinkedListNode);
        }
        return lockFreeLinkedListNode;
    }

    public final void i(LockFreeLinkedListNode lockFreeLinkedListNode) {
        LockFreeLinkedListNode lockFreeLinkedListNode2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = c;
        do {
            lockFreeLinkedListNode2 = (LockFreeLinkedListNode) atomicReferenceFieldUpdater.get(lockFreeLinkedListNode);
            if (j() != lockFreeLinkedListNode) {
                return;
            }
        } while (!u3.a(c, lockFreeLinkedListNode, lockFreeLinkedListNode2, this));
        if (p()) {
            lockFreeLinkedListNode.g();
        }
    }

    public final Object j() {
        return b.get(this);
    }

    public final LockFreeLinkedListNode k() {
        LockFreeLinkedListNode lockFreeLinkedListNode;
        Object objJ = j();
        es8 es8Var = objJ instanceof es8 ? (es8) objJ : null;
        if (es8Var != null && (lockFreeLinkedListNode = es8Var.a) != null) {
            return lockFreeLinkedListNode;
        }
        y45.h(objJ, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
        return (LockFreeLinkedListNode) objJ;
    }

    public final LockFreeLinkedListNode l() {
        LockFreeLinkedListNode lockFreeLinkedListNodeG = g();
        return lockFreeLinkedListNodeG == null ? h((LockFreeLinkedListNode) c.get(this)) : lockFreeLinkedListNodeG;
    }

    public boolean p() {
        return j() instanceof es8;
    }

    public boolean q() {
        return r() == null;
    }

    public final LockFreeLinkedListNode r() {
        Object objJ;
        LockFreeLinkedListNode lockFreeLinkedListNode;
        do {
            objJ = j();
            if (objJ instanceof es8) {
                return ((es8) objJ).a;
            }
            if (objJ == this) {
                return (LockFreeLinkedListNode) objJ;
            }
            y45.h(objJ, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeLinkedListNode");
            lockFreeLinkedListNode = (LockFreeLinkedListNode) objJ;
        } while (!u3.a(b, this, objJ, lockFreeLinkedListNode.s()));
        lockFreeLinkedListNode.g();
        return null;
    }

    public final es8 s() {
        es8 es8Var = (es8) d.get(this);
        if (es8Var != null) {
            return es8Var;
        }
        es8 es8Var2 = new es8(this);
        d.set(this, es8Var2);
        return es8Var2;
    }

    public String toString() {
        return new PropertyReference0Impl(this) {
            @Override
            public Object get() {
                return qt1.a(this.receiver);
            }
        } + '@' + qt1.b(this);
    }
}
