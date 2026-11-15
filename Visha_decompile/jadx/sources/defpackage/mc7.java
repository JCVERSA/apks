package defpackage;

import io.reactivex.BackpressureStrategy;
import io.reactivex.Scheduler;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.observers.LambdaObserver;
import io.reactivex.internal.operators.flowable.FlowableOnBackpressureError;
import io.reactivex.internal.operators.observable.ObservableCombineLatest;
import io.reactivex.internal.operators.observable.ObservableCreate;
import io.reactivex.internal.operators.observable.ObservableDelay;
import io.reactivex.internal.operators.observable.ObservableDoFinally;
import io.reactivex.internal.operators.observable.ObservableFlatMap;
import io.reactivex.internal.operators.observable.ObservableFlatMapMaybe;
import io.reactivex.internal.operators.observable.ObservableInterval;
import io.reactivex.internal.operators.observable.ObservableObserveOn;
import io.reactivex.internal.operators.observable.ObservablePublish;
import io.reactivex.internal.operators.observable.ObservableRepeat;
import io.reactivex.internal.operators.observable.ObservableRetryPredicate;
import io.reactivex.internal.operators.observable.ObservableScalarXMap;
import io.reactivex.internal.operators.observable.ObservableSubscribeOn;
import io.reactivex.internal.operators.observable.ObservableTakeUntil;
import io.reactivex.internal.operators.observable.ObservableTimeoutTimed;
import io.reactivex.internal.operators.observable.ObservableUnsubscribeOn;
import io.reactivex.internal.operators.observable.b;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

public abstract class mc7<T> implements ld7 {

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[BackpressureStrategy.values().length];
            a = iArr;
            try {
                iArr[BackpressureStrategy.DROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[BackpressureStrategy.LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[BackpressureStrategy.MISSING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[BackpressureStrategy.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static mc7 C(Object... objArr) {
        ac7.d(objArr, "items is null");
        if (objArr.length == 0) {
            return r();
        }
        return objArr.length == 1 ? K(objArr[0]) : yw8.o(new vc7(objArr));
    }

    public static mc7 D(Callable callable) {
        ac7.d(callable, "supplier is null");
        return yw8.o(new wc7(callable));
    }

    public static mc7 E(Iterable iterable) {
        ac7.d(iterable, "source is null");
        return yw8.o(new xc7(iterable));
    }

    public static mc7 H(long j, long j2, TimeUnit timeUnit) {
        return I(j, j2, timeUnit, k29.a());
    }

    public static mc7 I(long j, long j2, TimeUnit timeUnit, Scheduler scheduler) {
        ac7.d(timeUnit, "unit is null");
        ac7.d(scheduler, "scheduler is null");
        return yw8.o(new ObservableInterval(Math.max(0L, j), Math.max(0L, j2), timeUnit, scheduler));
    }

    public static mc7 J(long j, TimeUnit timeUnit) {
        return I(j, j, timeUnit, k29.a());
    }

    public static mc7 K(Object obj) {
        ac7.d(obj, "item is null");
        return yw8.o(new b(obj));
    }

    public static int c() {
        return r14.a();
    }

    public static mc7 d(t74 t74Var, int i, ld7... ld7VarArr) {
        return f(ld7VarArr, t74Var, i);
    }

    public static mc7 e(ld7 ld7Var, ld7 ld7Var2, be0 be0Var) {
        ac7.d(ld7Var, "source1 is null");
        ac7.d(ld7Var2, "source2 is null");
        return d(Functions.g(be0Var), c(), ld7Var, ld7Var2);
    }

    public static mc7 f(ld7[] ld7VarArr, t74 t74Var, int i) {
        ac7.d(ld7VarArr, "sources is null");
        if (ld7VarArr.length == 0) {
            return r();
        }
        ac7.d(t74Var, "combiner is null");
        ac7.e(i, "bufferSize");
        return yw8.o(new ObservableCombineLatest(ld7VarArr, null, t74Var, i << 1, false));
    }

    public static mc7 h(ed7 ed7Var) {
        ac7.d(ed7Var, "source is null");
        return yw8.o(new ObservableCreate(ed7Var));
    }

    public static mc7 m0(ld7 ld7Var) {
        ac7.d(ld7Var, "source is null");
        return ld7Var instanceof mc7 ? yw8.o((mc7) ld7Var) : yw8.o(new yc7(ld7Var));
    }

    public static mc7 r() {
        return yw8.o(sc7.b);
    }

    public static mc7 s(Throwable th) {
        ac7.d(th, "exception is null");
        return t(Functions.f(th));
    }

    public static mc7 t(Callable callable) {
        ac7.d(callable, "errorSupplier is null");
        return yw8.o(new tc7(callable));
    }

    public final mc7 A(t74 t74Var) {
        return B(t74Var, false);
    }

    public final mc7 B(t74 t74Var, boolean z) {
        ac7.d(t74Var, "mapper is null");
        return yw8.o(new ObservableFlatMapMaybe(this, t74Var, z));
    }

    public final mc7 F() {
        return yw8.o(new zc7(this));
    }

    public final hb1 G() {
        return yw8.k(new ad7(this));
    }

    public final mc7 L(t74 t74Var) {
        ac7.d(t74Var, "mapper is null");
        return yw8.o(new bd7(this, t74Var));
    }

    public final mc7 M(Scheduler scheduler) {
        return N(scheduler, false, c());
    }

    public final mc7 N(Scheduler scheduler, boolean z, int i) {
        ac7.d(scheduler, "scheduler is null");
        ac7.e(i, "bufferSize");
        return yw8.o(new ObservableObserveOn(this, scheduler, z, i));
    }

    public final mc7 O(t74 t74Var) {
        ac7.d(t74Var, "resumeFunction is null");
        return yw8.o(new cd7(this, t74Var, false));
    }

    public final mc7 P(t74 t74Var) {
        ac7.d(t74Var, "valueSupplier is null");
        return yw8.o(new dd7(this, t74Var));
    }

    public final af1 Q() {
        return ObservablePublish.q0(this);
    }

    public final mc7 R(long j) {
        if (j >= 0) {
            return j == 0 ? r() : yw8.o(new ObservableRepeat(this, j));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + j);
    }

    public final mc7 S(long j) {
        return T(j, Functions.a());
    }

    public final mc7 T(long j, ie8 ie8Var) {
        if (j >= 0) {
            ac7.d(ie8Var, "predicate is null");
            return yw8.o(new ObservableRetryPredicate(this, j, ie8Var));
        }
        throw new IllegalArgumentException("times >= 0 required but it was " + j);
    }

    public final mc7 U() {
        return Q().p0();
    }

    public final b96 V() {
        return yw8.n(new id7(this));
    }

    public final xm9 W() {
        return yw8.p(new jd7(this, null));
    }

    public final mc7 X(long j) {
        return j <= 0 ? yw8.o(this) : yw8.o(new kd7(this, j));
    }

    public final rc2 Y() {
        return b0(Functions.d(), Functions.f, Functions.c, Functions.d());
    }

    public final rc2 Z(zf1 zf1Var) {
        return b0(zf1Var, Functions.f, Functions.c, Functions.d());
    }

    public final rc2 a0(zf1 zf1Var, zf1 zf1Var2) {
        return b0(zf1Var, zf1Var2, Functions.c, Functions.d());
    }

    public final rc2 b0(zf1 zf1Var, zf1 zf1Var2, d5 d5Var, zf1 zf1Var3) {
        ac7.d(zf1Var, "onNext is null");
        ac7.d(zf1Var2, "onError is null");
        ac7.d(d5Var, "onComplete is null");
        ac7.d(zf1Var3, "onSubscribe is null");
        LambdaObserver lambdaObserver = new LambdaObserver(zf1Var, zf1Var2, d5Var, zf1Var3);
        subscribe(lambdaObserver);
        return lambdaObserver;
    }

    public abstract void c0(pd7 pd7Var);

    public final mc7 d0(Scheduler scheduler) {
        ac7.d(scheduler, "scheduler is null");
        return yw8.o(new ObservableSubscribeOn(this, scheduler));
    }

    public final mc7 e0(long j) {
        if (j >= 0) {
            return yw8.o(new md7(this, j));
        }
        throw new IllegalArgumentException("count >= 0 required but it was " + j);
    }

    public final mc7 f0(ld7 ld7Var) {
        ac7.d(ld7Var, "other is null");
        return yw8.o(new ObservableTakeUntil(this, ld7Var));
    }

    public final mc7 g(od7 od7Var) {
        return m0(((od7) ac7.d(od7Var, "composer is null")).a(this));
    }

    public final mc7 g0(long j, TimeUnit timeUnit) {
        return h0(j, timeUnit, null, k29.a());
    }

    public final mc7 h0(long j, TimeUnit timeUnit, ld7 ld7Var, Scheduler scheduler) {
        ac7.d(timeUnit, "timeUnit is null");
        ac7.d(scheduler, "scheduler is null");
        return yw8.o(new ObservableTimeoutTimed(this, j, timeUnit, scheduler, ld7Var));
    }

    public final mc7 i(long j, TimeUnit timeUnit) {
        return j(j, timeUnit, k29.a(), false);
    }

    public final r14 i0(BackpressureStrategy backpressureStrategy) {
        v14 v14Var = new v14(this);
        int i = a.a[backpressureStrategy.ordinal()];
        if (i == 1) {
            return v14Var.l();
        }
        if (i == 2) {
            return v14Var.m();
        }
        if (i != 3) {
            return i != 4 ? v14Var.j() : yw8.m(new FlowableOnBackpressureError(v14Var));
        }
        return v14Var;
    }

    public final mc7 j(long j, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        ac7.d(timeUnit, "unit is null");
        ac7.d(scheduler, "scheduler is null");
        return yw8.o(new ObservableDelay(this, j, timeUnit, scheduler, z));
    }

    public final xm9 j0() {
        return k0(16);
    }

    public final mc7 k() {
        return l(Functions.e(), Functions.c());
    }

    public final xm9 k0(int i) {
        ac7.e(i, "capacityHint");
        return yw8.p(new nd7(this, i));
    }

    public final mc7 l(t74 t74Var, Callable callable) {
        ac7.d(t74Var, "keySelector is null");
        ac7.d(callable, "collectionSupplier is null");
        return yw8.o(new oc7(this, t74Var, callable));
    }

    public final mc7 l0(Scheduler scheduler) {
        ac7.d(scheduler, "scheduler is null");
        return yw8.o(new ObservableUnsubscribeOn(this, scheduler));
    }

    public final mc7 m(d5 d5Var) {
        ac7.d(d5Var, "onFinally is null");
        return yw8.o(new ObservableDoFinally(this, d5Var));
    }

    public final mc7 n(zf1 zf1Var, zf1 zf1Var2, d5 d5Var, d5 d5Var2) {
        ac7.d(zf1Var, "onNext is null");
        ac7.d(zf1Var2, "onError is null");
        ac7.d(d5Var, "onComplete is null");
        ac7.d(d5Var2, "onAfterTerminate is null");
        return yw8.o(new pc7(this, zf1Var, zf1Var2, d5Var, d5Var2));
    }

    public final mc7 o(zf1 zf1Var) {
        zf1 zf1VarD = Functions.d();
        d5 d5Var = Functions.c;
        return n(zf1VarD, zf1Var, d5Var, d5Var);
    }

    public final mc7 p(zf1 zf1Var) {
        zf1 zf1VarD = Functions.d();
        d5 d5Var = Functions.c;
        return n(zf1Var, zf1VarD, d5Var, d5Var);
    }

    public final xm9 q(long j) {
        if (j >= 0) {
            return yw8.p(new qc7(this, j, null));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j);
    }

    @Override
    public final void subscribe(pd7 pd7Var) {
        ac7.d(pd7Var, "observer is null");
        try {
            pd7 pd7VarZ = yw8.z(this, pd7Var);
            ac7.d(pd7VarZ, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            c0(pd7VarZ);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            re3.b(th);
            yw8.s(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    public final mc7 u(ie8 ie8Var) {
        ac7.d(ie8Var, "predicate is null");
        return yw8.o(new uc7(this, ie8Var));
    }

    public final xm9 v() {
        return q(0L);
    }

    public final mc7 w(t74 t74Var) {
        return x(t74Var, false);
    }

    public final mc7 x(t74 t74Var, boolean z) {
        return y(t74Var, z, Integer.MAX_VALUE);
    }

    public final mc7 y(t74 t74Var, boolean z, int i) {
        return z(t74Var, z, i, c());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final mc7 z(t74 t74Var, boolean z, int i, int i2) {
        ac7.d(t74Var, "mapper is null");
        ac7.e(i, "maxConcurrency");
        ac7.e(i2, "bufferSize");
        if (!(this instanceof m19)) {
            return yw8.o(new ObservableFlatMap(this, t74Var, z, i, i2));
        }
        Object objCall = ((m19) this).call();
        return objCall == null ? r() : ObservableScalarXMap.a(objCall, t74Var);
    }
}
