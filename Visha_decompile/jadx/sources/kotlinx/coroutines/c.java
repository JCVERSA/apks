package kotlinx.coroutines;

import defpackage.bl5;
import defpackage.e74;
import defpackage.qt1;
import defpackage.wh1;
import defpackage.y45;
import kotlin.coroutines.d;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.c;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.LimitedDispatcher;

public abstract class c extends kotlin.coroutines.a implements kotlin.coroutines.c {
    public static final a Key = new a(null);

    public static final class a extends kotlin.coroutines.b {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final c d(kotlin.coroutines.d.b bVar) {
            if (bVar instanceof c) {
                return (c) bVar;
            }
            return null;
        }

        public a() {
            super(kotlin.coroutines.c.A6, new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return c.a.d((d.b) obj);
                }
            });
        }
    }

    public c() {
        super(kotlin.coroutines.c.A6);
    }

    public static c limitedParallelism$default(c cVar, int i, String str, int i2, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: limitedParallelism");
        }
        if ((i2 & 2) != 0) {
            str = null;
        }
        return cVar.limitedParallelism(i, str);
    }

    public abstract void dispatch(kotlin.coroutines.d dVar, Runnable runnable);

    public void dispatchYield(kotlin.coroutines.d dVar, Runnable runnable) {
        dispatch(dVar, runnable);
    }

    @Override
    public <E extends kotlin.coroutines.d.b> E get(kotlin.coroutines.d.c cVar) {
        return (E) kotlin.coroutines.c.a.a(this, cVar);
    }

    @Override
    public final <T> wh1<T> interceptContinuation(wh1<? super T> wh1Var) {
        return new DispatchedContinuation(this, wh1Var);
    }

    public boolean isDispatchNeeded(kotlin.coroutines.d dVar) {
        return true;
    }

    public c limitedParallelism(int i, String str) {
        bl5.a(i);
        return new LimitedDispatcher(this, i, str);
    }

    @Override
    public kotlin.coroutines.d minusKey(kotlin.coroutines.d.c cVar) {
        return kotlin.coroutines.c.a.b(this, cVar);
    }

    public final c plus(c cVar) {
        return cVar;
    }

    @Override
    public final void releaseInterceptedContinuation(wh1<?> wh1Var) {
        y45.h(wh1Var, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        ((DispatchedContinuation) wh1Var).release$kotlinx_coroutines_core();
    }

    public String toString() {
        return qt1.a(this) + '@' + qt1.b(this);
    }

    public c limitedParallelism(int i) {
        return limitedParallelism(i, null);
    }
}
