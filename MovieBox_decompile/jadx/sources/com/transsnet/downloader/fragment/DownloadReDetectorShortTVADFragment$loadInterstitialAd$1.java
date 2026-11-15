package com.transsnet.downloader.fragment;

import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.fragment.DownloadReDetectorShortTVADFragment$loadInterstitialAd$1", f = "DownloadReDetectorShortTVADFragment.kt", l = {Sdk$SDKError.Reason.PLACEMENT_SLEEP_VALUE}, m = "invokeSuspend")
final class DownloadReDetectorShortTVADFragment$loadInterstitialAd$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    int label;
    final DownloadReDetectorShortTVADFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadReDetectorShortTVADFragment$loadInterstitialAd$1(DownloadReDetectorShortTVADFragment downloadReDetectorShortTVADFragment, Continuation<? super DownloadReDetectorShortTVADFragment$loadInterstitialAd$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadReDetectorShortTVADFragment;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadReDetectorShortTVADFragment$loadInterstitialAd$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            BiddingInterstitialManager biddingInterstitialManager = this.this$0.interstitialManager;
            if (biddingInterstitialManager != null) {
                this.label = 1;
                if (AbsAdBidding.t0(biddingInterstitialManager, 0, false, this, 3, null) == objF) {
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
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadReDetectorShortTVADFragment$loadInterstitialAd$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
