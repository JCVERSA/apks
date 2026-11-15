package com.transsion.ad.bidding.interstitial;

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
@DebugMetadata(c = "com.transsion.ad.bidding.interstitial.BiddingInterstitialManager$Companion$preLoadAd$1", f = "BiddingInterstitialManager.kt", l = {27}, m = "invokeSuspend")
final class BiddingInterstitialManager$Companion$preLoadAd$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Map<String, Object> $ctxMap;
    final String $sceneId;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BiddingInterstitialManager$Companion$preLoadAd$1(String str, Map<String, ? extends Object> map, Continuation<? super BiddingInterstitialManager$Companion$preLoadAd$1> continuation) {
        super(2, continuation);
        this.$sceneId = str;
        this.$ctxMap = map;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BiddingInterstitialManager$Companion$preLoadAd$1(this.$sceneId, this.$ctxMap, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            i iVarB = i.f40954j.b(this.$sceneId);
            if (iVarB != null) {
                String str = this.$sceneId;
                Map<String, Object> map = this.$ctxMap;
                this.label = 1;
                if (iVarB.l(str, map, this) == objF) {
                    return objF;
                }
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
        return ((BiddingInterstitialManager$Companion$preLoadAd$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
