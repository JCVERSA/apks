package com.transsion.ad.bidding.nativead;

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
@DebugMetadata(c = "com.transsion.ad.bidding.nativead.BiddingNativeManager$Companion$preload$1", f = "BiddingNativeManager.kt", l = {32}, m = "invokeSuspend")
final class BiddingNativeManager$Companion$preload$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Map<String, Object> $ctxMap;
    final String $sceneId;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BiddingNativeManager$Companion$preload$1(String str, Map<String, ? extends Object> map, Continuation<? super BiddingNativeManager$Companion$preload$1> continuation) {
        super(2, continuation);
        this.$sceneId = str;
        this.$ctxMap = map;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BiddingNativeManager$Companion$preload$1(this.$sceneId, this.$ctxMap, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            BiddingHiSavanaNativeProvider biddingHiSavanaNativeProviderB = BiddingHiSavanaNativeProvider.f40957j.b(this.$sceneId);
            if (biddingHiSavanaNativeProviderB != null) {
                String str = this.$sceneId;
                Map<String, Object> map = this.$ctxMap;
                this.label = 1;
                if (biddingHiSavanaNativeProviderB.s(str, map, this) == objF) {
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
        return ((BiddingNativeManager$Companion$preload$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
