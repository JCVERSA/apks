package defpackage;

import io.reactivex.BackpressureStrategy;
import io.reactivex.Scheduler;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.operators.flowable.FlowableCreate;
import io.reactivex.internal.operators.flowable.FlowableFlatMapMaybe;
import io.reactivex.internal.operators.flowable.FlowableInternalHelper$RequestMax;
import io.reactivex.internal.operators.flowable.FlowableObserveOn;
import io.reactivex.internal.operators.flowable.FlowableOnBackpressureBuffer;
import io.reactivex.internal.operators.flowable.FlowableOnBackpressureDrop;
import io.reactivex.internal.operators.flowable.FlowableOnBackpressureLatest;
import io.reactivex.internal.operators.flowable.FlowableSubscribeOn;
import io.reactivex.internal.operators.flowable.FlowableUnsubscribeOn;
import io.reactivex.internal.subscribers.LambdaSubscriber;
import io.reactivex.internal.subscribers.StrictSubscriber;

public abstract class r14 implements jk8 {
    public static final int b = Math.max(1, Integer.getInteger("rx2.buffer-size", 128).intValue());

    public static int a() {
        return b;
    }

    public static r14 b(w14 w14Var, BackpressureStrategy backpressureStrategy) {
        ac7.d(w14Var, "source is null");
        ac7.d(backpressureStrategy, "mode is null");
        return yw8.m(new FlowableCreate(w14Var, backpressureStrategy));
    }

    public static r14 d() {
        return yw8.m(u14.c);
    }

    public final b96 c(long j) {
        if (j >= 0) {
            return yw8.n(new s14(this, j));
        }
        throw new IndexOutOfBoundsException("index >= 0 required but it was " + j);
    }

    public final b96 e() {
        return c(0L);
    }

    public final r14 f(t74 t74Var) {
        return g(t74Var, false, Integer.MAX_VALUE);
    }

    public final r14 g(t74 t74Var, boolean z, int i) {
        ac7.d(t74Var, "mapper is null");
        ac7.e(i, "maxConcurrency");
        return yw8.m(new FlowableFlatMapMaybe(this, t74Var, z, i));
    }

    public final r14 h(Scheduler scheduler) {
        return i(scheduler, false, a());
    }

    public final r14 i(Scheduler scheduler, boolean z, int i) {
        ac7.d(scheduler, "scheduler is null");
        ac7.e(i, "bufferSize");
        return yw8.m(new FlowableObserveOn(this, scheduler, z, i));
    }

    public final r14 j() {
        return k(a(), false, true);
    }

    public final r14 k(int i, boolean z, boolean z2) {
        ac7.e(i, "capacity");
        return yw8.m(new FlowableOnBackpressureBuffer(this, i, z2, z, Functions.c));
    }

    public final r14 l() {
        return yw8.m(new FlowableOnBackpressureDrop(this));
    }

    public final r14 m() {
        return yw8.m(new FlowableOnBackpressureLatest(this));
    }

    public final rc2 n(zf1 zf1Var) {
        return o(zf1Var, Functions.f, Functions.c, FlowableInternalHelper$RequestMax.INSTANCE);
    }

    public final rc2 o(zf1 zf1Var, zf1 zf1Var2, d5 d5Var, zf1 zf1Var3) {
        ac7.d(zf1Var, "onNext is null");
        ac7.d(zf1Var2, "onError is null");
        ac7.d(d5Var, "onComplete is null");
        ac7.d(zf1Var3, "onSubscribe is null");
        LambdaSubscriber lambdaSubscriber = new LambdaSubscriber(zf1Var, zf1Var2, d5Var, zf1Var3);
        p(lambdaSubscriber);
        return lambdaSubscriber;
    }

    public final void p(y14 y14Var) {
        ac7.d(y14Var, "s is null");
        try {
            d2a d2aVarB = yw8.B(this, y14Var);
            ac7.d(d2aVarB, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            q(d2aVarB);
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

    public abstract void q(d2a d2aVar);

    public final r14 r(Scheduler scheduler) {
        ac7.d(scheduler, "scheduler is null");
        return s(scheduler, !(this instanceof FlowableCreate));
    }

    public final r14 s(Scheduler scheduler, boolean z) {
        ac7.d(scheduler, "scheduler is null");
        return yw8.m(new FlowableSubscribeOn(this, scheduler, z));
    }

    @Override
    public final void subscribe(d2a d2aVar) {
        if (d2aVar instanceof y14) {
            p((y14) d2aVar);
        } else {
            ac7.d(d2aVar, "s is null");
            p(new StrictSubscriber(d2aVar));
        }
    }

    public final r14 t(Scheduler scheduler) {
        ac7.d(scheduler, "scheduler is null");
        return yw8.m(new FlowableUnsubscribeOn(this, scheduler));
    }
}
