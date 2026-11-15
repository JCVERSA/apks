package com.transsion.ad.strategy;

import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
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
@DebugMetadata(c = "com.transsion.ad.strategy.HotSplashManager$loadHotSplashAd$1", f = "HotSplashManager.kt", l = {176}, m = "invokeSuspend")
final class HotSplashManager$loadHotSplashAd$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;

    HotSplashManager$loadHotSplashAd$1(Continuation<? super HotSplashManager$loadHotSplashAd$1> continuation) {
        super(2, continuation);
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new HotSplashManager$loadHotSplashAd$1(continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        AbsAdBidding absAdBiddingL0;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            xh.a aVar = xh.a.f75336a;
            HotSplashManager hotSplashManager = HotSplashManager.f41168d;
            xh.a.m(aVar, "ad_int", hotSplashManager.getClassTag() + " --> loadHotSplashAd() --> App 进入前台符合条件 --> 准备展示开屏广告", 0, false, 4, null);
            if (HotSplashManager.f41171g == null) {
                HotSplashManager.f41171g = new BiddingInterstitialManager();
                BiddingInterstitialManager biddingInterstitialManager = HotSplashManager.f41171g;
                if (biddingInterstitialManager != null && (absAdBiddingL0 = biddingInterstitialManager.L0(rh.d.f71232a.a())) != null) {
                    absAdBiddingL0.K0(hotSplashManager);
                }
            }
            BiddingInterstitialManager biddingInterstitialManager2 = HotSplashManager.f41171g;
            if (biddingInterstitialManager2 != null) {
                this.label = 1;
                if (AbsAdBidding.t0(biddingInterstitialManager2, 0, false, this, 3, null) == objF) {
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
        return ((HotSplashManager$loadHotSplashAd$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
