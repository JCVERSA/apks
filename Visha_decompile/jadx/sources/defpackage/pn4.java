package defpackage;

import io.reactivex.internal.util.AtomicThrowable;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class pn4 {
    public static void a(pd7 pd7Var, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable thTerminate = atomicThrowable.terminate();
            if (thTerminate != null) {
                pd7Var.onError(thTerminate);
            } else {
                pd7Var.onComplete();
            }
        }
    }

    public static void b(d2a d2aVar, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable thTerminate = atomicThrowable.terminate();
            if (thTerminate != null) {
                d2aVar.onError(thTerminate);
            } else {
                d2aVar.onComplete();
            }
        }
    }

    public static void c(pd7 pd7Var, Throwable th, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (!atomicThrowable.addThrowable(th)) {
            yw8.s(th);
        } else if (atomicInteger.getAndIncrement() == 0) {
            pd7Var.onError(atomicThrowable.terminate());
        }
    }

    public static void d(d2a d2aVar, Throwable th, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (!atomicThrowable.addThrowable(th)) {
            yw8.s(th);
        } else if (atomicInteger.getAndIncrement() == 0) {
            d2aVar.onError(atomicThrowable.terminate());
        }
    }

    public static void e(pd7 pd7Var, Object obj, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            pd7Var.onNext(obj);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable thTerminate = atomicThrowable.terminate();
                if (thTerminate != null) {
                    pd7Var.onError(thTerminate);
                } else {
                    pd7Var.onComplete();
                }
            }
        }
    }

    public static void f(d2a d2aVar, Object obj, AtomicInteger atomicInteger, AtomicThrowable atomicThrowable) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            d2aVar.onNext(obj);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable thTerminate = atomicThrowable.terminate();
                if (thTerminate != null) {
                    d2aVar.onError(thTerminate);
                } else {
                    d2aVar.onComplete();
                }
            }
        }
    }
}
