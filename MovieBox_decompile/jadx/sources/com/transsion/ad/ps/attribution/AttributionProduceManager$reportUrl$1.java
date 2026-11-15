package com.transsion.ad.ps.attribution;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.ad.db.pslink.AttributionPoint;
import com.transsion.ad.ps.model.RecommendInfo;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.StringsKt;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.ps.attribution.AttributionProduceManager$reportUrl$1", f = "AttributionProduceManager.kt", l = {TmcConstants.NOTIFY_ADDHOME_API_SHOW, 99}, m = "invokeSuspend")
final class AttributionProduceManager$reportUrl$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final RecommendInfo $recommendInfo;
    final String $reportUrl;
    final AttributionPoint.AttributionType $type;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AttributionProduceManager$reportUrl$1(String str, RecommendInfo recommendInfo, AttributionPoint.AttributionType attributionType, Continuation<? super AttributionProduceManager$reportUrl$1> continuation) {
        super(2, continuation);
        this.$reportUrl = str;
        this.$recommendInfo = recommendInfo;
        this.$type = attributionType;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AttributionProduceManager$reportUrl$1(this.$reportUrl, this.$recommendInfo, this.$type, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                ResultKt.b(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            AttributionConsumeManager.f41128c.n();
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        AttributionConsumeManager.f41128c.n();
        if (!StringsKt.W(this.$reportUrl, "http", false, 2, null)) {
            return Unit.f64096a;
        }
        AttributionProduceManager attributionProduceManager = AttributionProduceManager.f41131c;
        RecommendInfo recommendInfo = this.$recommendInfo;
        String strValueOf = String.valueOf(recommendInfo != null ? Boxing.e(recommendInfo.getId()) : null);
        AttributionPoint.AttributionType attributionType = this.$type;
        String str = this.$reportUrl;
        this.label = 1;
        obj = attributionProduceManager.h(strValueOf, attributionType, str, this);
        if (obj == objF) {
            return objF;
        }
        if (((Boolean) obj).booleanValue()) {
            return Unit.f64096a;
        }
        AttributionProduceManager attributionProduceManager2 = AttributionProduceManager.f41131c;
        String str2 = this.$reportUrl;
        AttributionPoint.AttributionType attributionType2 = this.$type;
        RecommendInfo recommendInfo2 = this.$recommendInfo;
        String strValueOf2 = String.valueOf(recommendInfo2 != null ? Boxing.e(recommendInfo2.getId()) : null);
        this.label = 2;
        if (attributionProduceManager2.g(str2, attributionType2, strValueOf2, this) == objF) {
            return objF;
        }
        AttributionConsumeManager.f41128c.n();
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((AttributionProduceManager$reportUrl$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
