package defpackage;

import io.reactivex.Scheduler;
import java.util.concurrent.Callable;

public abstract class vw8 {
    public static volatile t74 a;
    public static volatile t74 b;

    public static Object a(t74 t74Var, Object obj) {
        try {
            return t74Var.apply(obj);
        } catch (Throwable th) {
            throw re3.a(th);
        }
    }

    public static Scheduler b(t74 t74Var, Callable callable) {
        Scheduler scheduler = (Scheduler) a(t74Var, callable);
        if (scheduler != null) {
            return scheduler;
        }
        throw new NullPointerException("Scheduler Callable returned null");
    }

    public static Scheduler c(Callable callable) {
        try {
            Scheduler scheduler = (Scheduler) callable.call();
            if (scheduler != null) {
                return scheduler;
            }
            throw new NullPointerException("Scheduler Callable returned null");
        } catch (Throwable th) {
            throw re3.a(th);
        }
    }

    public static Scheduler d(Callable callable) {
        if (callable == null) {
            throw new NullPointerException("scheduler == null");
        }
        t74 t74Var = a;
        return t74Var == null ? c(callable) : b(t74Var, callable);
    }

    public static Scheduler e(Scheduler scheduler) {
        if (scheduler == null) {
            throw new NullPointerException("scheduler == null");
        }
        t74 t74Var = b;
        return t74Var == null ? scheduler : (Scheduler) a(t74Var, scheduler);
    }
}
