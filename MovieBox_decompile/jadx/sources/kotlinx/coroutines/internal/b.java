package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.Intrinsics;

public abstract class b {

    private static final AtomicReferenceFieldUpdater f64879a = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_next$volatile");

    private static final AtomicReferenceFieldUpdater f64880b = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_prev$volatile");
    private volatile Object _next$volatile;
    private volatile Object _prev$volatile;

    public b(b bVar) {
        this._prev$volatile = bVar;
    }

    private final b d() {
        b bVarH = h();
        while (bVarH != null && bVarH.k()) {
            bVarH = (b) f64880b.get(bVarH);
        }
        return bVarH;
    }

    private final b e() {
        b bVarF = f();
        Intrinsics.e(bVarF);
        while (bVarF.k()) {
            b bVarF2 = bVarF.f();
            if (bVarF2 == null) {
                return bVarF;
            }
            bVarF = bVarF2;
        }
        return bVarF;
    }

    public final Object g() {
        return f64879a.get(this);
    }

    public final void c() {
        f64880b.set(this, null);
    }

    public final b f() {
        Object objG = g();
        if (objG == a.f64878a) {
            return null;
        }
        return (b) objG;
    }

    public final b h() {
        return (b) f64880b.get(this);
    }

    public abstract boolean k();

    public final boolean l() {
        return f() == null;
    }

    public final boolean m() {
        return androidx.concurrent.futures.a.a(f64879a, this, null, a.f64878a);
    }

    public final void n() {
        Object obj;
        if (l()) {
            return;
        }
        while (true) {
            b bVarD = d();
            b bVarE = e();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f64880b;
            do {
                obj = atomicReferenceFieldUpdater.get(bVarE);
            } while (!androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, bVarE, obj, ((b) obj) == null ? null : bVarD));
            if (bVarD != null) {
                f64879a.set(bVarD, bVarE);
            }
            if (!bVarE.k() || bVarE.l()) {
                if (bVarD == null || !bVarD.k()) {
                    return;
                }
            }
        }
    }

    public final boolean o(b bVar) {
        return androidx.concurrent.futures.a.a(f64879a, this, null, bVar);
    }
}
