package com.transsion.ad.test.ad_example;

import com.cloud.tmc.integration.params.TmcStartParams;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.interstitial.BiddingInterstitialManager;
import java.util.Map;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.test.ad_example.TestAdInterstitialActivity$onCreate$1$1", f = "TestAdInterstitialActivity.kt", l = {68}, m = "invokeSuspend")
final class TestAdInterstitialActivity$onCreate$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final TestAdInterstitialActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TestAdInterstitialActivity$onCreate$1$1(TestAdInterstitialActivity testAdInterstitialActivity, Continuation<? super TestAdInterstitialActivity$onCreate$1$1> continuation) {
        super(2, continuation);
        this.this$0 = testAdInterstitialActivity;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TestAdInterstitialActivity$onCreate$1$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        BiddingInterstitialManager biddingInterstitialManager;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            BiddingInterstitialManager biddingInterstitialManager2 = this.this$0.interstitialManager;
            if (biddingInterstitialManager2 == null) {
                Intrinsics.y("interstitialManager");
                biddingInterstitialManager2 = null;
            }
            biddingInterstitialManager2.L0("MBInterstitialTestId");
            BiddingInterstitialManager biddingInterstitialManager3 = this.this$0.interstitialManager;
            if (biddingInterstitialManager3 == null) {
                Intrinsics.y("interstitialManager");
                biddingInterstitialManager3 = null;
            }
            biddingInterstitialManager3.J0(null);
            BiddingInterstitialManager biddingInterstitialManager4 = this.this$0.interstitialManager;
            if (biddingInterstitialManager4 == null) {
                Intrinsics.y("interstitialManager");
                biddingInterstitialManager4 = null;
            }
            biddingInterstitialManager4.I0(this.this$0);
            BiddingInterstitialManager biddingInterstitialManager5 = this.this$0.interstitialManager;
            if (biddingInterstitialManager5 == null) {
                Intrinsics.y("interstitialManager");
                biddingInterstitialManager5 = null;
            }
            biddingInterstitialManager5.K0(this.this$0.interstitialListener);
            Map mapA = com.transsion.ad.strategy.c.f41178a.a("test4");
            mapA.put(TmcStartParams.KEY_CHANNEL_ID, "3");
            BiddingInterstitialManager biddingInterstitialManager6 = this.this$0.interstitialManager;
            if (biddingInterstitialManager6 == null) {
                Intrinsics.y("interstitialManager");
                biddingInterstitialManager6 = null;
            }
            biddingInterstitialManager6.J0(mapA);
            BiddingInterstitialManager biddingInterstitialManager7 = this.this$0.interstitialManager;
            if (biddingInterstitialManager7 == null) {
                Intrinsics.y("interstitialManager");
                biddingInterstitialManager = null;
            } else {
                biddingInterstitialManager = biddingInterstitialManager7;
            }
            this.label = 1;
            if (AbsAdBidding.t0(biddingInterstitialManager, 0, false, this, 3, null) == objF) {
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
        return ((TestAdInterstitialActivity$onCreate$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
