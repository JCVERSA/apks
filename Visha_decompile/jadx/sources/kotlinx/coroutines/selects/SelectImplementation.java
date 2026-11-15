package kotlinx.coroutines.selects;

import defpackage.cr0;
import defpackage.e74;
import defpackage.fr0;
import defpackage.i81;
import defpackage.jgc;
import defpackage.oa9;
import defpackage.pt1;
import defpackage.s74;
import defpackage.sa9;
import defpackage.u3;
import defpackage.u74;
import defpackage.ua9;
import defpackage.uc2;
import defpackage.wh1;
import defpackage.x71;
import defpackage.xa9;
import defpackage.y45;
import defpackage.ya9;
import defpackage.z45;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.c;
import kotlin.coroutines.d;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.b;

public class SelectImplementation implements b, xa9, jgc {
    public static final AtomicReferenceFieldUpdater g = AtomicReferenceFieldUpdater.newUpdater(SelectImplementation.class, Object.class, "state$volatile");
    public final d b;
    public Object d;
    private volatile Object state$volatile = ya9.b;
    public List c = new ArrayList(2);
    public int e = -1;
    public Object f = ya9.e;

    public final class a {
        public final Object a;
        public final u74 b;
        public final u74 c;
        public final Object d;
        public final Object e;
        public final u74 f;
        public Object g;
        public int h = -1;

        public a(Object obj, u74 u74Var, u74 u74Var2, Object obj2, Object obj3, u74 u74Var3) {
            this.a = obj;
            this.b = u74Var;
            this.c = u74Var2;
            this.d = obj2;
            this.e = obj3;
            this.f = u74Var3;
        }

        public final u74 a(xa9 xa9Var, Object obj) {
            u74 u74Var = this.f;
            if (u74Var != null) {
                return (u74) u74Var.invoke(xa9Var, this.d, obj);
            }
            return null;
        }

        public final void b() {
            Object obj = this.g;
            SelectImplementation selectImplementation = SelectImplementation.this;
            if (obj instanceof oa9) {
                ((oa9) obj).s(this.h, null, selectImplementation.getContext());
                return;
            }
            uc2 uc2Var = obj instanceof uc2 ? (uc2) obj : null;
            if (uc2Var != null) {
                uc2Var.dispose();
            }
        }

        public final Object c(Object obj, wh1 wh1Var) {
            Object obj2 = this.e;
            if (this.d == ya9.i()) {
                y45.h(obj2, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction0<R of kotlinx.coroutines.selects.SelectImplementation>");
                return ((e74) obj2).invoke(wh1Var);
            }
            y45.h(obj2, "null cannot be cast to non-null type kotlin.coroutines.SuspendFunction1<kotlin.Any?, R of kotlinx.coroutines.selects.SelectImplementation>");
            return ((s74) obj2).invoke(obj, wh1Var);
        }

        public final Object d(Object obj) {
            return this.c.invoke(this.a, this.d, obj);
        }

        public final boolean e(SelectImplementation selectImplementation) {
            this.b.invoke(this.a, selectImplementation, this.d);
            return selectImplementation.f == ya9.e;
        }
    }

    public SelectImplementation(d dVar) {
        this.b = dVar;
    }

    public static Object m(SelectImplementation selectImplementation, wh1 wh1Var) {
        return selectImplementation.s() ? selectImplementation.k(wh1Var) : selectImplementation.n(wh1Var);
    }

    private final boolean s() {
        return g.get(this) instanceof a;
    }

    public static void u(SelectImplementation selectImplementation, a aVar, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: register");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        selectImplementation.t(aVar, z);
    }

    @Override
    public void a(Throwable th) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = g;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (obj == ya9.c) {
                return;
            }
        } while (!u3.a(atomicReferenceFieldUpdater, this, obj, ya9.d));
        List list = this.c;
        if (list == null) {
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((a) it.next()).b();
        }
        this.f = ya9.e;
        this.c = null;
    }

    @Override
    public void b(uc2 uc2Var) {
        this.d = uc2Var;
    }

    @Override
    public void c(Object obj) {
        this.f = obj;
    }

    @Override
    public boolean d(Object obj, Object obj2) {
        return x(obj, obj2) == 0;
    }

    @Override
    public d getContext() {
        return this.b;
    }

    public final void i(Object obj) {
        List list = this.c;
        y45.g(list);
        List list2 = list;
        if ((list2 instanceof Collection) && list2.isEmpty()) {
            return;
        }
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            if (((a) it.next()).a == obj) {
                throw new IllegalStateException(("Cannot use select clauses on the same object: " + obj).toString());
            }
        }
    }

    @Override
    public void invokeOnCancellation(oa9 oa9Var, int i) {
        this.d = oa9Var;
        this.e = i;
    }

    public final void j(a aVar) {
        List<a> list = this.c;
        if (list == null) {
            return;
        }
        for (a aVar2 : list) {
            if (aVar2 != aVar) {
                aVar2.b();
            }
        }
        g.set(this, ya9.c);
        this.f = ya9.e;
        this.c = null;
    }

    public final Object k(wh1 wh1Var) {
        Object obj = g.get(this);
        y45.h(obj, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation.ClauseData<R of kotlinx.coroutines.selects.SelectImplementation>");
        a aVar = (a) obj;
        Object obj2 = this.f;
        j(aVar);
        return aVar.c(aVar.d(obj2), wh1Var);
    }

    public Object l(wh1 wh1Var) {
        return m(this, wh1Var);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object n(wh1 wh1Var) {
        SelectImplementation$doSelectSuspend$1 selectImplementation$doSelectSuspend$1;
        if (wh1Var instanceof SelectImplementation$doSelectSuspend$1) {
            selectImplementation$doSelectSuspend$1 = (SelectImplementation$doSelectSuspend$1) wh1Var;
            int i = selectImplementation$doSelectSuspend$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                selectImplementation$doSelectSuspend$1.label = i - Integer.MIN_VALUE;
            } else {
                selectImplementation$doSelectSuspend$1 = new SelectImplementation$doSelectSuspend$1(this, wh1Var);
            }
        } else {
            selectImplementation$doSelectSuspend$1 = new SelectImplementation$doSelectSuspend$1(this, wh1Var);
        }
        Object objK = selectImplementation$doSelectSuspend$1.result;
        Object objF = z45.f();
        int i2 = selectImplementation$doSelectSuspend$1.label;
        if (i2 != 0) {
            if (i2 == 1) {
                this = (SelectImplementation) selectImplementation$doSelectSuspend$1.L$0;
                c.b(objK);
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                c.b(objK);
            }
        }
        c.b(objK);
        selectImplementation$doSelectSuspend$1.L$0 = this;
        selectImplementation$doSelectSuspend$1.label = 1;
        if (y(selectImplementation$doSelectSuspend$1) == objF) {
            return objF;
        }
        selectImplementation$doSelectSuspend$1.L$0 = null;
        selectImplementation$doSelectSuspend$1.label = 2;
        objK = this.k(selectImplementation$doSelectSuspend$1);
        return objK == objF ? objF : objK;
    }

    public final a o(Object obj) {
        List list = this.c;
        Object obj2 = null;
        if (list == null) {
            return null;
        }
        for (Object obj3 : list) {
            if (((a) obj3).a == obj) {
                obj2 = obj3;
                break;
            }
        }
        a aVar = (a) obj2;
        if (aVar != null) {
            return aVar;
        }
        throw new IllegalStateException(("Clause with object " + obj + " is not found").toString());
    }

    public void q(sa9 sa9Var, e74 e74Var) {
        u(this, new a(sa9Var.d(), sa9Var.c(), sa9Var.b(), ya9.i(), e74Var, sa9Var.a()), false, 1, null);
    }

    public void r(ua9 ua9Var, s74 s74Var) {
        u(this, new a(ua9Var.d(), ua9Var.c(), ua9Var.b(), null, s74Var, ua9Var.a()), false, 1, null);
    }

    public final void t(a aVar, boolean z) {
        if (g.get(this) instanceof a) {
            return;
        }
        if (!z) {
            i(aVar.a);
        }
        if (!aVar.e(this)) {
            g.set(this, aVar);
            return;
        }
        if (!z) {
            List list = this.c;
            y45.g(list);
            list.add(aVar);
        }
        aVar.g = this.d;
        aVar.h = this.e;
        this.d = null;
        this.e = -1;
    }

    public final void v(Object obj) {
        a aVarO = o(obj);
        y45.g(aVarO);
        aVarO.g = null;
        aVarO.h = -1;
        t(aVarO, true);
    }

    public final TrySelectDetailedResult w(Object obj, Object obj2) {
        return ya9.a(x(obj, obj2));
    }

    public final int x(Object obj, Object obj2) {
        while (true) {
            Object obj3 = g.get(this);
            if (obj3 instanceof cr0) {
                a aVarO = o(obj);
                if (aVarO == null) {
                    continue;
                } else {
                    u74 u74VarA = aVarO.a(this, obj2);
                    if (u3.a(g, this, obj3, aVarO)) {
                        this.f = obj2;
                        if (ya9.j((cr0) obj3, u74VarA)) {
                            return 0;
                        }
                        this.f = ya9.e;
                        return 2;
                    }
                }
            } else {
                if (y45.e(obj3, ya9.c) || (obj3 instanceof a)) {
                    return 3;
                }
                if (y45.e(obj3, ya9.d)) {
                    return 2;
                }
                if (y45.e(obj3, ya9.b)) {
                    if (u3.a(g, this, obj3, x71.e(obj))) {
                        return 1;
                    }
                } else {
                    if (!(obj3 instanceof List)) {
                        throw new IllegalStateException(("Unexpected state: " + obj3).toString());
                    }
                    if (u3.a(g, this, obj3, i81.K0((Collection) obj3, obj))) {
                        return 1;
                    }
                }
            }
        }
    }

    public final Object y(wh1 wh1Var) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.c(wh1Var), 1);
        cancellableContinuationImpl.initCancellability();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = g;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == ya9.b) {
                if (u3.a(g, this, obj, cancellableContinuationImpl)) {
                    fr0.c(cancellableContinuationImpl, this);
                    break;
                }
            } else {
                if (!(obj instanceof List)) {
                    if (obj instanceof a) {
                        cancellableContinuationImpl.resume(zfb.a, ((a) obj).a(this, this.f));
                        break;
                    }
                    throw new IllegalStateException(("unexpected state: " + obj).toString());
                }
                if (u3.a(g, this, obj, ya9.b)) {
                    Iterator it = ((Iterable) obj).iterator();
                    while (it.hasNext()) {
                        v(it.next());
                    }
                }
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == z45.f()) {
            pt1.c(wh1Var);
        }
        return result == z45.f() ? result : zfb.a;
    }
}
