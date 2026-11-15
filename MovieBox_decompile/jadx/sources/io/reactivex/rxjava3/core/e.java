package io.reactivex.rxjava3.core;

import io.reactivex.rxjava3.internal.functions.Functions;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableOnBackpressureBuffer;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableOnBackpressureDrop;
import io.reactivex.rxjava3.internal.operators.flowable.FlowableOnBackpressureLatest;
import io.reactivex.rxjava3.internal.subscribers.StrictSubscriber;
import java.util.Objects;

public abstract class e implements i00.b {

    static final int f62317a = Math.max(1, Integer.getInteger("rx3.buffer-size", 128).intValue());

    public static int a() {
        return f62317a;
    }

    public final e b() {
        return c(a(), false, true);
    }

    public final e c(int i10, boolean z10, boolean z11) {
        io.reactivex.rxjava3.internal.functions.a.a(i10, "capacity");
        return dy.a.m(new FlowableOnBackpressureBuffer(this, i10, z11, z10, Functions.f62325c, Functions.a()));
    }

    public final e d() {
        return dy.a.m(new FlowableOnBackpressureDrop(this));
    }

    public final e e() {
        return dy.a.m(new FlowableOnBackpressureLatest(this, null));
    }

    public final void f(f fVar) {
        Objects.requireNonNull(fVar, "subscriber is null");
        try {
            i00.c cVarV = dy.a.v(this, fVar);
            Objects.requireNonNull(cVarV, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            g(cVarV);
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

    protected abstract void g(i00.c cVar);

    @Override
    public final void subscribe(i00.c cVar) {
        if (cVar instanceof f) {
            f((f) cVar);
        } else {
            Objects.requireNonNull(cVar, "subscriber is null");
            f(new StrictSubscriber(cVar));
        }
    }
}
