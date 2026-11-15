package com.transsion.ad.bidding.base;

import com.transsion.ad.monopoly.manager.AdPlansStorageManager;
import com.transsion.ad.monopoly.plan.AdPlanSourceManager;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.bidding.base.AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2", f = "AbsBiddingInterceptHiSavanaAdManager.kt", l = {Sdk$SDKError.Reason.AD_RESPONSE_RETRY_AFTER_VALUE}, m = "invokeSuspend")
final class AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Map<String, Object> $ctxMap;
    final String $sceneId;
    int label;
    final AbsBiddingInterceptHiSavanaAdManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2(String str, Map<String, ? extends Object> map, AbsBiddingInterceptHiSavanaAdManager absBiddingInterceptHiSavanaAdManager, Continuation<? super AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2> continuation) {
        super(2, continuation);
        this.$sceneId = str;
        this.$ctxMap = map;
        this.this$0 = absBiddingInterceptHiSavanaAdManager;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2(this.$sceneId, this.$ctxMap, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            AdPlansStorageManager adPlansStorageManager = AdPlansStorageManager.f41107a;
            String str = this.$sceneId;
            Map mapA = this.$ctxMap;
            if (mapA == null) {
                mapA = com.transsion.ad.strategy.c.f41178a.a(null);
            }
            this.label = 1;
            obj = AdPlansStorageManager.e(adPlansStorageManager, str, mapA, null, new AdPlanSourceManager.AdPlanEnum[0], this, 4, null);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        List list = (List) obj;
        AbsBiddingInterceptHiSavanaAdManager absBiddingInterceptHiSavanaAdManager = this.this$0;
        xh.b.a.c(absBiddingInterceptHiSavanaAdManager, 0, absBiddingInterceptHiSavanaAdManager.getClassTag() + " --> sceneId = " + this.$sceneId + " preload --> ctxMap: " + this.$ctxMap + ", 可用广告计划：" + list.size(), null, false, 5, null);
        if (list.isEmpty()) {
            return Unit.f64096a;
        }
        if (this.this$0.j(list)) {
            xh.b.a.c(this.this$0, 3, "preLoadAd() --> hiId = " + this.this$0.h(), null, false, 4, null);
            fe.b bVarD = this.this$0.d();
            if (bVarD != null) {
                bVarD.preload();
            }
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((AbsBiddingInterceptHiSavanaAdManager$preLoadAd$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
