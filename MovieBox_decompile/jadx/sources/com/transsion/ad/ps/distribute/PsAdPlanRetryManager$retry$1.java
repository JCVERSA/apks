package com.transsion.ad.ps.distribute;

import android.text.TextUtils;
import com.transsion.ad.monopoly.model.AdPlans;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.ps.distribute.PsAdPlanRetryManager$retry$1", f = "PsAdPlanRetryManager.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE}, m = "invokeSuspend")
final class PsAdPlanRetryManager$retry$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final AdPlans $plan;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PsAdPlanRetryManager$retry$1(AdPlans adPlans, Continuation<? super PsAdPlanRetryManager$retry$1> continuation) {
        super(2, continuation);
        this.$plan = adPlans;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new PsAdPlanRetryManager$retry$1(this.$plan, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        String id2;
        AdPlans adPlans;
        String extAdSlot;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            AdPlans adPlans2 = this.$plan;
            int i11 = -1;
            if (!TextUtils.isEmpty(adPlans2 != null ? adPlans2.getExtAdSlot() : null) && (adPlans = this.$plan) != null && (extAdSlot = adPlans.getExtAdSlot()) != null) {
                i11 = Integer.parseInt(extAdSlot);
            }
            if (i11 < 0) {
                return Unit.f64096a;
            }
            PsDistributeRequestManager psDistributeRequestManager = PsDistributeRequestManager.f41142a;
            Integer numD = Boxing.d(i11);
            AdPlans adPlans3 = this.$plan;
            if (adPlans3 == null || (id2 = adPlans3.getId()) == null) {
                id2 = "";
            }
            String str = id2;
            this.label = 1;
            if (psDistributeRequestManager.n(0, 10, numD, str, this) == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((PsAdPlanRetryManager$retry$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
