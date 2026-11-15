package dy;

import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.b;
import io.reactivex.rxjava3.core.e;
import io.reactivex.rxjava3.core.g;
import io.reactivex.rxjava3.core.j;
import io.reactivex.rxjava3.core.o;
import io.reactivex.rxjava3.core.p;
import io.reactivex.rxjava3.core.q;
import io.reactivex.rxjava3.exceptions.CompositeException;
import io.reactivex.rxjava3.exceptions.MissingBackpressureException;
import io.reactivex.rxjava3.exceptions.OnErrorNotImplementedException;
import io.reactivex.rxjava3.exceptions.QueueOverflowException;
import io.reactivex.rxjava3.exceptions.UndeliverableException;
import io.reactivex.rxjava3.internal.schedulers.ExecutorScheduler;
import io.reactivex.rxjava3.internal.util.ExceptionHelper;
import java.util.Objects;
import java.util.concurrent.Executor;
import yx.c;
import yx.f;
import yx.h;
import yx.k;

public abstract class a {

    static volatile f f59165a;

    static volatile h f59166b;

    static volatile h f59167c;

    static volatile h f59168d;

    static volatile h f59169e;

    static volatile h f59170f;

    static volatile h f59171g;

    static volatile h f59172h;

    static volatile h f59173i;

    static volatile h f59174j;

    static volatile h f59175k;

    static volatile h f59176l;

    static volatile h f59177m;

    static volatile c f59178n;

    static volatile c f59179o;

    static volatile c f59180p;

    static volatile c f59181q;

    static volatile c f59182r;

    static volatile boolean f59183s;

    static void A(Throwable th2) {
        Thread threadCurrentThread = Thread.currentThread();
        threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th2);
    }

    static Object a(c cVar, Object obj, Object obj2) {
        try {
            return cVar.apply(obj, obj2);
        } catch (Throwable th2) {
            throw ExceptionHelper.g(th2);
        }
    }

    static Object b(h hVar, Object obj) {
        try {
            return hVar.apply(obj);
        } catch (Throwable th2) {
            throw ExceptionHelper.g(th2);
        }
    }

    static Scheduler c(h hVar, k kVar) {
        Object objB = b(hVar, kVar);
        Objects.requireNonNull(objB, "Scheduler Supplier result can't be null");
        return (Scheduler) objB;
    }

    static Scheduler d(k kVar) {
        try {
            Object obj = kVar.get();
            Objects.requireNonNull(obj, "Scheduler Supplier result can't be null");
            return (Scheduler) obj;
        } catch (Throwable th2) {
            throw ExceptionHelper.g(th2);
        }
    }

    public static Scheduler e(Executor executor, boolean z10, boolean z11) {
        return new ExecutorScheduler(executor, z10, z11);
    }

    public static Scheduler f(k kVar) {
        Objects.requireNonNull(kVar, "Scheduler Supplier can't be null");
        h hVar = f59167c;
        return hVar == null ? d(kVar) : c(hVar, kVar);
    }

    public static Scheduler g(k kVar) {
        Objects.requireNonNull(kVar, "Scheduler Supplier can't be null");
        h hVar = f59169e;
        return hVar == null ? d(kVar) : c(hVar, kVar);
    }

    public static Scheduler h(k kVar) {
        Objects.requireNonNull(kVar, "Scheduler Supplier can't be null");
        h hVar = f59170f;
        return hVar == null ? d(kVar) : c(hVar, kVar);
    }

    public static Scheduler i(k kVar) {
        Objects.requireNonNull(kVar, "Scheduler Supplier can't be null");
        h hVar = f59168d;
        return hVar == null ? d(kVar) : c(hVar, kVar);
    }

    static boolean j(Throwable th2) {
        return (th2 instanceof OnErrorNotImplementedException) || (th2 instanceof MissingBackpressureException) || (th2 instanceof QueueOverflowException) || (th2 instanceof IllegalStateException) || (th2 instanceof NullPointerException) || (th2 instanceof IllegalArgumentException) || (th2 instanceof CompositeException);
    }

    public static boolean k() {
        return f59183s;
    }

    public static io.reactivex.rxjava3.core.a l(io.reactivex.rxjava3.core.a aVar) {
        h hVar = f59177m;
        return hVar != null ? (io.reactivex.rxjava3.core.a) b(hVar, aVar) : aVar;
    }

    public static e m(e eVar) {
        h hVar = f59173i;
        return hVar != null ? (e) b(hVar, eVar) : eVar;
    }

    public static g n(g gVar) {
        h hVar = f59175k;
        return hVar != null ? (g) b(hVar, gVar) : gVar;
    }

    public static j o(j jVar) {
        h hVar = f59174j;
        return hVar != null ? (j) b(hVar, jVar) : jVar;
    }

    public static p p(p pVar) {
        h hVar = f59176l;
        return hVar != null ? (p) b(hVar, pVar) : pVar;
    }

    public static boolean q() {
        return false;
    }

    public static void r(Throwable th2) {
        f fVar = f59165a;
        if (th2 == null) {
            th2 = ExceptionHelper.b("onError called with a null Throwable.");
        } else if (!j(th2)) {
            th2 = new UndeliverableException(th2);
        }
        if (fVar != null) {
            try {
                fVar.accept(th2);
                return;
            } catch (Throwable th3) {
                th3.printStackTrace();
                A(th3);
            }
        }
        th2.printStackTrace();
        A(th2);
    }

    public static Scheduler s(Scheduler scheduler) {
        h hVar = f59172h;
        return hVar == null ? scheduler : (Scheduler) b(hVar, scheduler);
    }

    public static Runnable t(Runnable runnable) {
        Objects.requireNonNull(runnable, "run is null");
        h hVar = f59166b;
        return hVar == null ? runnable : (Runnable) b(hVar, runnable);
    }

    public static Scheduler u(Scheduler scheduler) {
        h hVar = f59171g;
        return hVar == null ? scheduler : (Scheduler) b(hVar, scheduler);
    }

    public static i00.c v(e eVar, i00.c cVar) {
        c cVar2 = f59178n;
        return cVar2 != null ? (i00.c) a(cVar2, eVar, cVar) : cVar;
    }

    public static b w(io.reactivex.rxjava3.core.a aVar, b bVar) {
        c cVar = f59182r;
        return cVar != null ? (b) a(cVar, aVar, bVar) : bVar;
    }

    public static io.reactivex.rxjava3.core.h x(g gVar, io.reactivex.rxjava3.core.h hVar) {
        c cVar = f59179o;
        return cVar != null ? (io.reactivex.rxjava3.core.h) a(cVar, gVar, hVar) : hVar;
    }

    public static o y(j jVar, o oVar) {
        c cVar = f59180p;
        return cVar != null ? (o) a(cVar, jVar, oVar) : oVar;
    }

    public static q z(p pVar, q qVar) {
        c cVar = f59181q;
        return cVar != null ? (q) a(cVar, pVar, qVar) : qVar;
    }
}
