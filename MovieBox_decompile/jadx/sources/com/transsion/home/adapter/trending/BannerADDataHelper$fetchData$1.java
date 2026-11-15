package com.transsion.home.adapter.trending;

import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
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
@DebugMetadata(c = "com.transsion.home.adapter.trending.BannerADDataHelper$fetchData$1", f = "BannerADDataHelper.kt", l = {Sdk$SDKMetric.SDKMetricType.AD_VALIDATION_TO_PRESENT_DURATION_MS_VALUE}, m = "invokeSuspend")
final class BannerADDataHelper$fetchData$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;

    BannerADDataHelper$fetchData$1(Continuation<? super BannerADDataHelper$fetchData$1> continuation) {
        super(2, continuation);
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BannerADDataHelper$fetchData$1(continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            BannerADDataHelper bannerADDataHelper = BannerADDataHelper.f43481a;
            BannerADDataHelper.f43483c = new BiddingNativeManager();
            BiddingNativeManager biddingNativeManager = BannerADDataHelper.f43483c;
            if (biddingNativeManager != null) {
                biddingNativeManager.L0("TrendingNativeBannerScene");
            }
            BiddingNativeManager biddingNativeManager2 = BannerADDataHelper.f43483c;
            if (biddingNativeManager2 != null) {
                biddingNativeManager2.K0(BannerADDataHelper.f43488h);
            }
            BiddingNativeManager biddingNativeManager3 = BannerADDataHelper.f43483c;
            if (biddingNativeManager3 != null) {
                this.label = 1;
                if (AbsAdBidding.t0(biddingNativeManager3, 0, false, this, 3, null) == objF) {
                    return objF;
                }
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        BannerADDataHelper bannerADDataHelper2 = BannerADDataHelper.f43481a;
        BannerADDataHelper.f43482b = com.transsion.ad.scene.a.o(com.transsion.ad.scene.a.f41152a, "TrendingNativeBannerScene", 0, 2, null);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((BannerADDataHelper$fetchData$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
