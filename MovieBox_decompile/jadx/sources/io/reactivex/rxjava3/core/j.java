package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.observers.LambdaObserver;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableOnBackpressureError;
import io.reactivex.rxjava3.internal.operators.observable.ObservableBuffer;
import io.reactivex.rxjava3.internal.operators.observable.ObservableCreate;
import io.reactivex.rxjava3.internal.operators.observable.ObservableFlatMap;
import io.reactivex.rxjava3.internal.operators.observable.ObservableObserveOn;
import io.reactivex.rxjava3.internal.operators.observable.ObservableRetryBiPredicate;
import io.reactivex.rxjava3.internal.operators.observable.ObservableScalarXMap;
import io.reactivex.rxjava3.internal.operators.observable.ObservableSubscribeOn;
import io.reactivex.rxjava3.internal.operators.observable.ObservableZip;
import io.reactivex.rxjava3.internal.util.ArrayListSupplier;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.concurrent.Callable;

public abstract class j<T> implements m {

    static class a {

        static final int[] f62318a;

        static {
            int[] iArr = new int[BackpressureStrategy.values().length];
            f62318a = iArr;
            try {
                iArr[BackpressureStrategy.DROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f62318a[BackpressureStrategy.LATEST.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f62318a[BackpressureStrategy.MISSING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f62318a[BackpressureStrategy.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static j G(m mVar) {
        Objects.requireNonNull(mVar, "source is null");
        return mVar instanceof j ? dy.a.o((j) mVar) : dy.a.o(new io.reactivex.rxjava3.internal.operators.observable.h(mVar));
    }

    public static j H(m mVar, m mVar2, m mVar3, yx.g gVar) {
        Objects.requireNonNull(mVar, "source1 is null");
        Objects.requireNonNull(mVar2, "source2 is null");
        Objects.requireNonNull(mVar3, "source3 is null");
        Objects.requireNonNull(gVar, "zipper is null");
        return I(Functions.c(gVar), false, e(), mVar, mVar2, mVar3);
    }

    public static j I(yx.h hVar, boolean z10, int i10, m... mVarArr) {
        Objects.requireNonNull(mVarArr, "sources is null");
        if (mVarArr.length == 0) {
            return k();
        }
        Objects.requireNonNull(hVar, "zipper is null");
        io.reactivex.rxjava3.internal.functions.a.a(i10, "bufferSize");
        return dy.a.o(new ObservableZip(mVarArr, null, hVar, i10, z10));
    }

    public static int e() {
        return e.a();
    }

    public static j g(l lVar) {
        Objects.requireNonNull(lVar, "source is null");
        return dy.a.o(new ObservableCreate(lVar));
    }

    private j i(yx.f fVar, yx.f fVar2, yx.a aVar, yx.a aVar2) {
        Objects.requireNonNull(fVar, "onNext is null");
        Objects.requireNonNull(fVar2, "onError is null");
        Objects.requireNonNull(aVar, "onComplete is null");
        Objects.requireNonNull(aVar2, "onAfterTerminate is null");
        return dy.a.o(new io.reactivex.rxjava3.internal.operators.observable.d(this, fVar, fVar2, aVar, aVar2));
    }

    public static j k() {
        return dy.a.o(io.reactivex.rxjava3.internal.operators.observable.e.f62438a);
    }

    public static j l(Throwable th2) {
        Objects.requireNonNull(th2, "throwable is null");
        return m(Functions.b(th2));
    }

    public static j m(yx.k kVar) {
        Objects.requireNonNull(kVar, "supplier is null");
        return dy.a.o(new io.reactivex.rxjava3.internal.operators.observable.f(kVar));
    }

    public static j r(Callable callable) {
        Objects.requireNonNull(callable, "callable is null");
        return dy.a.o(new io.reactivex.rxjava3.internal.operators.observable.g(callable));
    }

    public static j t(Object obj) {
        Objects.requireNonNull(obj, "item is null");
        return dy.a.o(new io.reactivex.rxjava3.internal.operators.observable.k(obj));
    }

    public final p A() {
        return dy.a.p(new io.reactivex.rxjava3.internal.operators.observable.o(this, null));
    }

    public final io.reactivex.rxjava3.disposables.c B(yx.f fVar, yx.f fVar2) {
        return C(fVar, fVar2, Functions.f62325c);
    }

    public final io.reactivex.rxjava3.disposables.c C(yx.f fVar, yx.f fVar2, yx.a aVar) {
        Objects.requireNonNull(fVar, "onNext is null");
        Objects.requireNonNull(fVar2, "onError is null");
        Objects.requireNonNull(aVar, "onComplete is null");
        LambdaObserver lambdaObserver = new LambdaObserver(fVar, fVar2, aVar, Functions.a());
        subscribe(lambdaObserver);
        return lambdaObserver;
    }

    protected abstract void D(o oVar);

    public final j E(Scheduler scheduler) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        return dy.a.o(new ObservableSubscribeOn(this, scheduler));
    }

    public final e F(BackpressureStrategy backpressureStrategy) {
        Objects.requireNonNull(backpressureStrategy, "strategy is null");
        io.reactivex.rxjava3.internal.operators.flowable.c cVar = new io.reactivex.rxjava3.internal.operators.flowable.c(this);
        int i10 = a.f62318a[backpressureStrategy.ordinal()];
        if (i10 == 1) {
            return cVar.d();
        }
        if (i10 == 2) {
            return cVar.e();
        }
        if (i10 != 3) {
            return i10 != 4 ? cVar.b() : dy.a.m(new FlowableOnBackpressureError(cVar));
        }
        return cVar;
    }

    public final Object a() {
        io.reactivex.rxjava3.internal.observers.c cVar = new io.reactivex.rxjava3.internal.observers.c();
        subscribe(cVar);
        Object objA = cVar.a();
        if (objA != null) {
            return objA;
        }
        throw new NoSuchElementException();
    }

    public final j b(int i10) {
        return c(i10, i10);
    }

    public final j c(int i10, int i11) {
        return d(i10, i11, ArrayListSupplier.asSupplier());
    }

    public final j d(int i10, int i11, yx.k kVar) {
        io.reactivex.rxjava3.internal.functions.a.a(i10, "count");
        io.reactivex.rxjava3.internal.functions.a.a(i11, "skip");
        Objects.requireNonNull(kVar, "bufferSupplier is null");
        return dy.a.o(new ObservableBuffer(this, i10, i11, kVar));
    }

    public final j f(n nVar) {
        Objects.requireNonNull(nVar, "composer is null");
        return G(nVar.a(this));
    }

    public final j h(yx.f fVar) {
        Objects.requireNonNull(fVar, "onAfterNext is null");
        return dy.a.o(new io.reactivex.rxjava3.internal.operators.observable.c(this, fVar));
    }

    public final j j(yx.f fVar) {
        yx.f fVarA = Functions.a();
        yx.a aVar = Functions.f62325c;
        return i(fVarA, fVar, aVar, aVar);
    }

    public final j n(yx.h hVar) {
        return o(hVar, false);
    }

    public final j o(yx.h hVar, boolean z10) {
        return p(hVar, z10, Integer.MAX_VALUE);
    }

    public final j p(yx.h hVar, boolean z10, int i10) {
        return q(hVar, z10, i10, e());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final j q(yx.h hVar, boolean z10, int i10, int i11) {
        Objects.requireNonNull(hVar, "mapper is null");
        io.reactivex.rxjava3.internal.functions.a.a(i10, "maxConcurrency");
        io.reactivex.rxjava3.internal.functions.a.a(i11, "bufferSize");
        if (!(this instanceof io.reactivex.rxjava3.operators.e)) {
            return dy.a.o(new ObservableFlatMap(this, hVar, z10, i10, i11));
        }
        Object obj = ((io.reactivex.rxjava3.operators.e) this).get();
        return obj == null ? k() : ObservableScalarXMap.a(obj, hVar);
    }

    public final io.reactivex.rxjava3.core.a s() {
        return dy.a.l(new io.reactivex.rxjava3.internal.operators.observable.j(this));
    }

    @Override
    public final void subscribe(o oVar) {
        Objects.requireNonNull(oVar, "observer is null");
        try {
            o oVarY = dy.a.y(this, oVar);
            Objects.requireNonNull(oVarY, "The RxJavaPlugins.onSubscribe hook returned a null Observer. Please change the handler provided to RxJavaPlugins.setOnObservableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            D(oVarY);
        } catch (NullPointerException e10) {
            throw e10;
        } catch (Throwable th2) {
            io.reactivex.rxjava3.exceptions.a.b(th2);
            dy.a.r(th2);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th2);
            throw nullPointerException;
        }
    }

    public final j u(yx.h hVar) {
        Objects.requireNonNull(hVar, "mapper is null");
        return dy.a.o(new io.reactivex.rxjava3.internal.operators.observable.l(this, hVar));
    }

    public final j v(Scheduler scheduler) {
        return w(scheduler, false, e());
    }

    public final j w(Scheduler scheduler, boolean z10, int i10) {
        Objects.requireNonNull(scheduler, "scheduler is null");
        io.reactivex.rxjava3.internal.functions.a.a(i10, "bufferSize");
        return dy.a.o(new ObservableObserveOn(this, scheduler, z10, i10));
    }

    public final j x(yx.h hVar) {
        Objects.requireNonNull(hVar, "fallbackSupplier is null");
        return dy.a.o(new io.reactivex.rxjava3.internal.operators.observable.m(this, hVar));
    }

    public final j y(yx.d dVar) {
        Objects.requireNonNull(dVar, "predicate is null");
        return dy.a.o(new ObservableRetryBiPredicate(this, dVar));
    }

    public final g z() {
        return dy.a.n(new io.reactivex.rxjava3.internal.operators.observable.n(this));
    }
}
