package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

public class qo5 {
    public static final AtomicReferenceFieldUpdater a = AtomicReferenceFieldUpdater.newUpdater(qo5.class, Object.class, "_cur$volatile");
    private volatile Object _cur$volatile;

    public qo5(boolean z) {
        this._cur$volatile = new ro5(8, z);
    }

    public final boolean a(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
        while (true) {
            ro5 ro5Var = (ro5) atomicReferenceFieldUpdater.get(this);
            int iA = ro5Var.a(obj);
            if (iA == 0) {
                return true;
            }
            if (iA == 1) {
                u3.a(a, this, ro5Var, ro5Var.l());
            } else if (iA == 2) {
                return false;
            }
        }
    }

    public final void b() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
        while (true) {
            ro5 ro5Var = (ro5) atomicReferenceFieldUpdater.get(this);
            if (ro5Var.d()) {
                return;
            } else {
                u3.a(a, this, ro5Var, ro5Var.l());
            }
        }
    }

    public final int c() {
        return ((ro5) a.get(this)).g();
    }

    public final Object e() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = a;
        while (true) {
            ro5 ro5Var = (ro5) atomicReferenceFieldUpdater.get(this);
            Object objM = ro5Var.m();
            if (objM != ro5.h) {
                return objM;
            }
            u3.a(a, this, ro5Var, ro5Var.l());
        }
    }
}
