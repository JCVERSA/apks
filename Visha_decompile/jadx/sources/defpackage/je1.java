package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

public abstract class je1 {
    public static final AtomicReferenceFieldUpdater b = AtomicReferenceFieldUpdater.newUpdater(je1.class, Object.class, "_next$volatile");
    public static final AtomicReferenceFieldUpdater c = AtomicReferenceFieldUpdater.newUpdater(je1.class, Object.class, "_prev$volatile");
    private volatile Object _next$volatile;
    private volatile Object _prev$volatile;

    public je1(je1 je1Var) {
        this._prev$volatile = je1Var;
    }

    public final void c() {
        c.set(this, null);
    }

    public final je1 d() {
        je1 je1VarH = h();
        while (je1VarH != null && je1VarH.k()) {
            je1VarH = (je1) c.get(je1VarH);
        }
        return je1VarH;
    }

    public final je1 e() {
        je1 je1VarF;
        je1 je1VarF2 = f();
        y45.g(je1VarF2);
        while (je1VarF2.k() && (je1VarF = je1VarF2.f()) != null) {
            je1VarF2 = je1VarF;
        }
        return je1VarF2;
    }

    public final je1 f() {
        Object objG = g();
        if (objG == ie1.a) {
            return null;
        }
        return (je1) objG;
    }

    public final Object g() {
        return b.get(this);
    }

    public final je1 h() {
        return (je1) c.get(this);
    }

    public abstract boolean k();

    public final boolean l() {
        return f() == null;
    }

    public final boolean m() {
        return u3.a(b, this, null, ie1.a);
    }

    public final void n() {
        Object obj;
        if (l()) {
            return;
        }
        while (true) {
            je1 je1VarD = d();
            je1 je1VarE = e();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = c;
            do {
                obj = atomicReferenceFieldUpdater.get(je1VarE);
            } while (!u3.a(atomicReferenceFieldUpdater, je1VarE, obj, ((je1) obj) == null ? null : je1VarD));
            if (je1VarD != null) {
                b.set(je1VarD, je1VarE);
            }
            if (!je1VarE.k() || je1VarE.l()) {
                if (je1VarD == null || !je1VarD.k()) {
                    return;
                }
            }
        }
    }

    public final boolean o(je1 je1Var) {
        return u3.a(b, this, null, je1Var);
    }
}
