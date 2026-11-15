package com.transsion.wrapperad.h5;

import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.video.BiddingVideoManager;
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
@DebugMetadata(c = "com.transsion.wrapperad.h5.H5VideoAdProvider$h5OpenAd$1", f = "H5VideoAdProvider.kt", l = {92}, m = "invokeSuspend")
final class H5VideoAdProvider$h5OpenAd$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $sceneId;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    H5VideoAdProvider$h5OpenAd$1(String str, Continuation<? super H5VideoAdProvider$h5OpenAd$1> continuation) {
        super(2, continuation);
        this.$sceneId = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new H5VideoAdProvider$h5OpenAd$1(this.$sceneId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            BiddingVideoManager biddingVideoManager = H5VideoAdProvider.f55995d;
            if (biddingVideoManager != null) {
                biddingVideoManager.L0(this.$sceneId);
            }
            BiddingVideoManager biddingVideoManager2 = H5VideoAdProvider.f55995d;
            if (biddingVideoManager2 != null) {
                biddingVideoManager2.J0(null);
            }
            BiddingVideoManager biddingVideoManager3 = H5VideoAdProvider.f55995d;
            if (biddingVideoManager3 != null) {
                biddingVideoManager3.K0(H5VideoAdProvider.f55996e);
            }
            BiddingVideoManager biddingVideoManager4 = H5VideoAdProvider.f55995d;
            if (biddingVideoManager4 != null) {
                this.label = 1;
                if (AbsAdBidding.t0(biddingVideoManager4, 0, false, this, 3, null) == objF) {
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
        return ((H5VideoAdProvider$h5OpenAd$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
