package com.transsion.subroom.activity;

import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.subroom.activity.SplashActivity$startSplashAdLoad$1", f = "SplashActivity.kt", l = {178, Sdk$SDKError.Reason.INVALID_GZIP_BID_PAYLOAD_VALUE}, m = "invokeSuspend")
final class SplashActivity$startSplashAdLoad$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final SplashActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SplashActivity$startSplashAdLoad$1(SplashActivity splashActivity, Continuation<? super SplashActivity$startSplashAdLoad$1> continuation) {
        super(2, continuation);
        this.this$0 = splashActivity;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SplashActivity$startSplashAdLoad$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        AbsAdBidding absAdBiddingL0;
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
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        this.label = 1;
        if (u0.a(100L, this) == objF) {
            return objF;
        }
        this.this$0.splashManager = new com.transsion.ad.bidding.splash.b();
        com.transsion.ad.bidding.splash.b bVar = this.this$0.splashManager;
        if (bVar != null && (absAdBiddingL0 = bVar.L0("ColdStartScene")) != null) {
            final SplashActivity splashActivity = this.this$0;
            AbsAdBidding absAdBiddingK0 = absAdBiddingL0.K0(new oh.a() {
                @Override
                public void i(TAdErrorCode tAdErrorCode) {
                    super.i(tAdErrorCode);
                    kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(splashActivity), null, null, new SplashActivity$startSplashAdLoad$1$1$onBiddingError$1(splashActivity, null), 3, null);
                }

                @Override
                public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                    super.j(biddingIntermediateMaterialBean);
                    kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(splashActivity), null, null, new SplashActivity$startSplashAdLoad$1$1$onBiddingLoad$1(splashActivity, biddingIntermediateMaterialBean, null), 3, null);
                }

                @Override
                public void m(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                    super.m(biddingIntermediateMaterialBean);
                    com.transsion.startup.pref.consume.c.f52518a.q();
                }

                @Override
                public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
                    super.p(biddingIntermediateMaterialBean);
                    kotlinx.coroutines.k.d(androidx.p009lifecycle.v.a(splashActivity), null, null, new SplashActivity$startSplashAdLoad$1$1$onBiddingWrapperAdShowError$1(splashActivity, null), 3, null);
                }
            });
            if (absAdBiddingK0 != null) {
                this.label = 2;
                if (AbsAdBidding.t0(absAdBiddingK0, 0, false, this, 3, null) == objF) {
                    return objF;
                }
            }
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SplashActivity$startSplashAdLoad$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
