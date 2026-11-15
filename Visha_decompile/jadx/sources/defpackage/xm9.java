package defpackage;

import io.reactivex.Scheduler;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.observers.ConsumerSingleObserver;
import io.reactivex.internal.operators.single.SingleCreate;
import io.reactivex.internal.operators.single.SingleFlatMapCompletable;
import io.reactivex.internal.operators.single.SingleObserveOn;
import io.reactivex.internal.operators.single.SingleSubscribeOn;
import io.reactivex.internal.operators.single.SingleTakeUntil;
import io.reactivex.internal.operators.single.SingleTimeout;
import io.reactivex.internal.operators.single.SingleToFlowable;
import io.reactivex.internal.operators.single.SingleZipArray;
import io.reactivex.internal.operators.single.a;
import java.util.NoSuchElementException;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

public abstract class xm9 implements mn9 {
    public static xm9 A(t74 t74Var, mn9... mn9VarArr) {
        ac7.d(t74Var, "zipper is null");
        ac7.d(mn9VarArr, "sources is null");
        return mn9VarArr.length == 0 ? f(new NoSuchElementException()) : yw8.p(new SingleZipArray(mn9VarArr, t74Var));
    }

    public static xm9 d(jn9 jn9Var) {
        ac7.d(jn9Var, "source is null");
        return yw8.p(new SingleCreate(jn9Var));
    }

    public static xm9 f(Throwable th) {
        ac7.d(th, "exception is null");
        return g(Functions.f(th));
    }

    public static xm9 g(Callable callable) {
        ac7.d(callable, "errorSupplier is null");
        return yw8.p(new an9(callable));
    }

    public static xm9 j(Callable callable) {
        ac7.d(callable, "callable is null");
        return yw8.p(new bn9(callable));
    }

    public static xm9 k(Object obj) {
        ac7.d(obj, "item is null");
        return yw8.p(new fn9(obj));
    }

    public static xm9 x(mn9 mn9Var) {
        ac7.d(mn9Var, "source is null");
        return mn9Var instanceof xm9 ? yw8.p((xm9) mn9Var) : yw8.p(new cn9(mn9Var));
    }

    public static xm9 y(mn9 mn9Var, mn9 mn9Var2, be0 be0Var) {
        ac7.d(mn9Var, "source1 is null");
        ac7.d(mn9Var2, "source2 is null");
        return A(Functions.g(be0Var), mn9Var, mn9Var2);
    }

    public static xm9 z(mn9 mn9Var, mn9 mn9Var2, mn9 mn9Var3, v74 v74Var) {
        ac7.d(mn9Var, "source1 is null");
        ac7.d(mn9Var2, "source2 is null");
        ac7.d(mn9Var3, "source3 is null");
        return A(Functions.h(v74Var), mn9Var, mn9Var2, mn9Var3);
    }

    @Override
    public final void a(in9 in9Var) {
        ac7.d(in9Var, "observer is null");
        in9 in9VarA = yw8.A(this, in9Var);
        ac7.d(in9VarA, "The RxJavaPlugins.onSubscribe hook returned a null SingleObserver. Please check the handler provided to RxJavaPlugins.setOnSingleSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
        try {
            q(in9VarA);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            re3.b(th);
            NullPointerException nullPointerException = new NullPointerException("subscribeActual failed");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public final Object b() {
        wf0 wf0Var = new wf0();
        a(wf0Var);
        return wf0Var.a();
    }

    public final xm9 c(pn9 pn9Var) {
        return x(((pn9) ac7.d(pn9Var, "transformer is null")).b(this));
    }

    public final xm9 e(zf1 zf1Var) {
        ac7.d(zf1Var, "onSuccess is null");
        return yw8.p(new ym9(this, zf1Var));
    }

    public final b96 h(ie8 ie8Var) {
        ac7.d(ie8Var, "predicate is null");
        return yw8.n(new g96(this, ie8Var));
    }

    public final hb1 i(t74 t74Var) {
        ac7.d(t74Var, "mapper is null");
        return yw8.k(new SingleFlatMapCompletable(this, t74Var));
    }

    public final xm9 l(t74 t74Var) {
        ac7.d(t74Var, "mapper is null");
        return yw8.p(new a(this, t74Var));
    }

    public final xm9 m(Scheduler scheduler) {
        ac7.d(scheduler, "scheduler is null");
        return yw8.p(new SingleObserveOn(this, scheduler));
    }

    public final rc2 n() {
        return p(Functions.d(), Functions.f);
    }

    public final rc2 o(zf1 zf1Var) {
        return p(zf1Var, Functions.f);
    }

    public final rc2 p(zf1 zf1Var, zf1 zf1Var2) {
        ac7.d(zf1Var, "onSuccess is null");
        ac7.d(zf1Var2, "onError is null");
        ConsumerSingleObserver consumerSingleObserver = new ConsumerSingleObserver(zf1Var, zf1Var2);
        a(consumerSingleObserver);
        return consumerSingleObserver;
    }

    public abstract void q(in9 in9Var);

    public final xm9 r(Scheduler scheduler) {
        ac7.d(scheduler, "scheduler is null");
        return yw8.p(new SingleSubscribeOn(this, scheduler));
    }

    public final xm9 s(jk8 jk8Var) {
        ac7.d(jk8Var, "other is null");
        return yw8.p(new SingleTakeUntil(this, jk8Var));
    }

    public final xm9 t(mn9 mn9Var) {
        ac7.d(mn9Var, "other is null");
        return s(new SingleToFlowable(mn9Var));
    }

    public final xm9 u(long j, TimeUnit timeUnit) {
        return v(j, timeUnit, k29.a(), null);
    }

    public final xm9 v(long j, TimeUnit timeUnit, Scheduler scheduler, mn9 mn9Var) {
        ac7.d(timeUnit, "unit is null");
        ac7.d(scheduler, "scheduler is null");
        return yw8.p(new SingleTimeout(this, j, timeUnit, scheduler, mn9Var));
    }

    public final b96 w() {
        return yw8.n(new i96(this));
    }
}
