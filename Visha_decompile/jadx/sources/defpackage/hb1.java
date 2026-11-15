package defpackage;

import io.reactivex.Scheduler;
import io.reactivex.internal.observers.CallbackCompletableObserver;
import io.reactivex.internal.observers.EmptyCompletableObserver;
import io.reactivex.internal.operators.completable.CompletableCreate;
import io.reactivex.internal.operators.completable.CompletableMergeIterable;
import io.reactivex.internal.operators.completable.CompletableSubscribeOn;

public abstract class hb1 implements sb1 {
    public static hb1 b(rb1 rb1Var) {
        ac7.d(rb1Var, "source is null");
        return yw8.k(new CompletableCreate(rb1Var));
    }

    public static hb1 c(Throwable th) {
        ac7.d(th, "error is null");
        return yw8.k(new mb1(th));
    }

    public static hb1 d(Runnable runnable) {
        ac7.d(runnable, "run is null");
        return yw8.k(new nb1(runnable));
    }

    public static hb1 e(Iterable iterable) {
        ac7.d(iterable, "sources is null");
        return yw8.k(new CompletableMergeIterable(iterable));
    }

    public static NullPointerException k(Throwable th) {
        NullPointerException nullPointerException = new NullPointerException("Actually not, but can't pass out an exception otherwise...");
        nullPointerException.initCause(th);
        return nullPointerException;
    }

    @Override
    public final void a(qb1 qb1Var) {
        ac7.d(qb1Var, "observer is null");
        try {
            qb1 qb1VarX = yw8.x(this, qb1Var);
            ac7.d(qb1VarX, "The RxJavaPlugins.onSubscribe hook returned a null CompletableObserver. Please check the handler provided to RxJavaPlugins.setOnCompletableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            i(qb1VarX);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            re3.b(th);
            yw8.s(th);
            throw k(th);
        }
    }

    public final rc2 f() {
        EmptyCompletableObserver emptyCompletableObserver = new EmptyCompletableObserver();
        a(emptyCompletableObserver);
        return emptyCompletableObserver;
    }

    public final rc2 g(d5 d5Var) {
        ac7.d(d5Var, "onComplete is null");
        CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(d5Var);
        a(callbackCompletableObserver);
        return callbackCompletableObserver;
    }

    public final rc2 h(d5 d5Var, zf1 zf1Var) {
        ac7.d(zf1Var, "onError is null");
        ac7.d(d5Var, "onComplete is null");
        CallbackCompletableObserver callbackCompletableObserver = new CallbackCompletableObserver(zf1Var, d5Var);
        a(callbackCompletableObserver);
        return callbackCompletableObserver;
    }

    public abstract void i(qb1 qb1Var);

    public final hb1 j(Scheduler scheduler) {
        ac7.d(scheduler, "scheduler is null");
        return yw8.k(new CompletableSubscribeOn(this, scheduler));
    }
}
