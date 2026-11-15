package com.transsion.ad.ps.attribution;

import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.ps.attribution.AttributionConsumeManager$consume$1", f = "AttributionConsumeManager.kt", l = {42, Sdk$SDKMetric.SDKMetricType.AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE}, m = "invokeSuspend")
final class AttributionConsumeManager$consume$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    private Object L$0;
    int label;

    AttributionConsumeManager$consume$1(Continuation<? super AttributionConsumeManager$consume$1> continuation) {
        super(2, continuation);
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AttributionConsumeManager$consume$1 attributionConsumeManager$consume$1 = new AttributionConsumeManager$consume$1(continuation);
        attributionConsumeManager$consume$1.L$0 = obj;
        return attributionConsumeManager$consume$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    ResultKt.b(obj);
                } else {
                    if (i10 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                AttributionConsumeManager.f41128c.p();
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            Result.Companion companion = Result.INSTANCE;
            AttributionConsumeManager attributionConsumeManager = AttributionConsumeManager.f41128c;
            this.label = 1;
            if (attributionConsumeManager.q(this) == objF) {
                return objF;
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            xh.a.i(xh.a.f75336a, AttributionConsumeManager.f41128c.e() + " --> consume() --> it = " + thM456exceptionOrNullimpl, 6, false, 4, null);
            this.label = 2;
            if (u0.a(10000L, this) == objF) {
                return objF;
            }
            AttributionConsumeManager.f41128c.p();
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((AttributionConsumeManager$consume$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
