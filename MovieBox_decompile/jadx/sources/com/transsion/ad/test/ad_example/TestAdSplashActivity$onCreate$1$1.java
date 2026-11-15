package com.transsion.ad.test.ad_example;

import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.transsion.ad.bidding.base.AbsAdBidding;
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
@DebugMetadata(c = "com.transsion.ad.test.ad_example.TestAdSplashActivity$onCreate$1$1", f = "TestAdSplashActivity.kt", l = {RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH}, m = "invokeSuspend")
final class TestAdSplashActivity$onCreate$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final TestAdSplashActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TestAdSplashActivity$onCreate$1$1(TestAdSplashActivity testAdSplashActivity, Continuation<? super TestAdSplashActivity$onCreate$1$1> continuation) {
        super(2, continuation);
        this.this$0 = testAdSplashActivity;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TestAdSplashActivity$onCreate$1$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        com.transsion.ad.bidding.splash.b bVar;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            com.transsion.ad.bidding.splash.b bVar2 = this.this$0.splashManager;
            if (bVar2 == null) {
                Intrinsics.y("splashManager");
                bVar2 = null;
            }
            bVar2.L0("MBSplashTestId");
            com.transsion.ad.bidding.splash.b bVar3 = this.this$0.splashManager;
            if (bVar3 == null) {
                Intrinsics.y("splashManager");
                bVar3 = null;
            }
            bVar3.J0(null);
            com.transsion.ad.bidding.splash.b bVar4 = this.this$0.splashManager;
            if (bVar4 == null) {
                Intrinsics.y("splashManager");
                bVar4 = null;
            }
            bVar4.I0(this.this$0);
            com.transsion.ad.bidding.splash.b bVar5 = this.this$0.splashManager;
            if (bVar5 == null) {
                Intrinsics.y("splashManager");
                bVar5 = null;
            }
            bVar5.K0(this.this$0.splashListener);
            com.transsion.ad.bidding.splash.b bVar6 = this.this$0.splashManager;
            if (bVar6 == null) {
                Intrinsics.y("splashManager");
                bVar = null;
            } else {
                bVar = bVar6;
            }
            this.label = 1;
            if (AbsAdBidding.t0(bVar, 0, false, this, 3, null) == objF) {
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
        return ((TestAdSplashActivity$onCreate$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
