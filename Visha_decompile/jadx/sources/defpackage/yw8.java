package defpackage;

import io.reactivex.Scheduler;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.MissingBackpressureException;
import io.reactivex.exceptions.OnErrorNotImplementedException;
import io.reactivex.exceptions.UndeliverableException;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.concurrent.Callable;

public abstract class yw8 {
    public static volatile zf1 a;
    public static volatile t74 b;
    public static volatile t74 c;
    public static volatile t74 d;
    public static volatile t74 e;
    public static volatile t74 f;
    public static volatile t74 g;
    public static volatile t74 h;
    public static volatile t74 i;
    public static volatile t74 j;
    public static volatile t74 k;
    public static volatile t74 l;
    public static volatile t74 m;
    public static volatile t74 n;
    public static volatile t74 o;
    public static volatile t74 p;
    public static volatile be0 q;
    public static volatile be0 r;
    public static volatile be0 s;
    public static volatile be0 t;
    public static volatile be0 u;
    public static volatile boolean v;
    public static volatile boolean w;

    public static in9 A(xm9 xm9Var, in9 in9Var) {
        be0 be0Var = t;
        return be0Var != null ? (in9) a(be0Var, xm9Var, in9Var) : in9Var;
    }

    public static d2a B(r14 r14Var, d2a d2aVar) {
        be0 be0Var = q;
        return be0Var != null ? (d2a) a(be0Var, r14Var, d2aVar) : d2aVar;
    }

    public static void C(zf1 zf1Var) {
        if (v) {
            throw new IllegalStateException("Plugins can't be changed anymore");
        }
        a = zf1Var;
    }

    public static void D(Throwable th) {
        Thread threadCurrentThread = Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
    }

    public static Object a(be0 be0Var, Object obj, Object obj2) {
        try {
            return be0Var.apply(obj, obj2);
        } catch (Throwable th) {
            throw ExceptionHelper.d(th);
        }
    }

    public static Object b(t74 t74Var, Object obj) {
        try {
            return t74Var.apply(obj);
        } catch (Throwable th) {
            throw ExceptionHelper.d(th);
        }
    }

    public static Scheduler c(t74 t74Var, Callable callable) {
        return (Scheduler) ac7.d(b(t74Var, callable), "Scheduler Callable result can't be null");
    }

    public static Scheduler d(Callable callable) {
        try {
            return (Scheduler) ac7.d(callable.call(), "Scheduler Callable result can't be null");
        } catch (Throwable th) {
            throw ExceptionHelper.d(th);
        }
    }

    public static Scheduler e(Callable callable) {
        ac7.d(callable, "Scheduler Callable can't be null");
        t74 t74Var = c;
        return t74Var == null ? d(callable) : c(t74Var, callable);
    }

    public static Scheduler f(Callable callable) {
        ac7.d(callable, "Scheduler Callable can't be null");
        t74 t74Var = e;
        return t74Var == null ? d(callable) : c(t74Var, callable);
    }

    public static Scheduler g(Callable callable) {
        ac7.d(callable, "Scheduler Callable can't be null");
        t74 t74Var = f;
        return t74Var == null ? d(callable) : c(t74Var, callable);
    }

    public static Scheduler h(Callable callable) {
        ac7.d(callable, "Scheduler Callable can't be null");
        t74 t74Var = d;
        return t74Var == null ? d(callable) : c(t74Var, callable);
    }

    public static boolean i(Throwable th) {
        return (th instanceof OnErrorNotImplementedException) || (th instanceof MissingBackpressureException) || (th instanceof IllegalStateException) || (th instanceof NullPointerException) || (th instanceof IllegalArgumentException) || (th instanceof CompositeException);
    }

    public static boolean j() {
        return w;
    }

    public static hb1 k(hb1 hb1Var) {
        t74 t74Var = p;
        return t74Var != null ? (hb1) b(t74Var, hb1Var) : hb1Var;
    }

    public static af1 l(af1 af1Var) {
        t74 t74Var = m;
        return t74Var != null ? (af1) b(t74Var, af1Var) : af1Var;
    }

    public static r14 m(r14 r14Var) {
        t74 t74Var = k;
        return t74Var != null ? (r14) b(t74Var, r14Var) : r14Var;
    }

    public static b96 n(b96 b96Var) {
        t74 t74Var = n;
        return t74Var != null ? (b96) b(t74Var, b96Var) : b96Var;
    }

    public static mc7 o(mc7 mc7Var) {
        t74 t74Var = l;
        return t74Var != null ? (mc7) b(t74Var, mc7Var) : mc7Var;
    }

    public static xm9 p(xm9 xm9Var) {
        t74 t74Var = o;
        return t74Var != null ? (xm9) b(t74Var, xm9Var) : xm9Var;
    }

    public static boolean q() {
        return false;
    }

    public static Scheduler r(Scheduler scheduler) {
        t74 t74Var = g;
        return t74Var == null ? scheduler : (Scheduler) b(t74Var, scheduler);
    }

    public static void s(Throwable th) {
        zf1 zf1Var = a;
        if (th == null) {
            th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
        } else if (!i(th)) {
            th = new UndeliverableException(th);
        }
        if (zf1Var != null) {
            try {
                zf1Var.accept(th);
                return;
            } catch (Throwable th2) {
                th2.printStackTrace();
                D(th2);
            }
        }
        th.printStackTrace();
        D(th);
    }

    public static Scheduler t(Scheduler scheduler) {
        t74 t74Var = i;
        return t74Var == null ? scheduler : (Scheduler) b(t74Var, scheduler);
    }

    public static Scheduler u(Scheduler scheduler) {
        t74 t74Var = j;
        return t74Var == null ? scheduler : (Scheduler) b(t74Var, scheduler);
    }

    public static Runnable v(Runnable runnable) {
        ac7.d(runnable, "run is null");
        t74 t74Var = b;
        return t74Var == null ? runnable : (Runnable) b(t74Var, runnable);
    }

    public static Scheduler w(Scheduler scheduler) {
        t74 t74Var = h;
        return t74Var == null ? scheduler : (Scheduler) b(t74Var, scheduler);
    }

    public static qb1 x(hb1 hb1Var, qb1 qb1Var) {
        be0 be0Var = u;
        return be0Var != null ? (qb1) a(be0Var, hb1Var, qb1Var) : qb1Var;
    }

    public static k96 y(b96 b96Var, k96 k96Var) {
        be0 be0Var = r;
        return be0Var != null ? (k96) a(be0Var, b96Var, k96Var) : k96Var;
    }

    public static pd7 z(mc7 mc7Var, pd7 pd7Var) {
        be0 be0Var = s;
        return be0Var != null ? (pd7) a(be0Var, mc7Var, pd7Var) : pd7Var;
    }
}
