package com.transsion.ad.test.ad_example;

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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.ad.test.ad_example.TestAdVideoActivity$onCreate$1$1", f = "TestAdVideoActivity.kt", l = {61}, m = "invokeSuspend")
final class TestAdVideoActivity$onCreate$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final TestAdVideoActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TestAdVideoActivity$onCreate$1$1(TestAdVideoActivity testAdVideoActivity, Continuation<? super TestAdVideoActivity$onCreate$1$1> continuation) {
        super(2, continuation);
        this.this$0 = testAdVideoActivity;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new TestAdVideoActivity$onCreate$1$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        BiddingVideoManager biddingVideoManager;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            BiddingVideoManager biddingVideoManager2 = this.this$0.videoManager;
            if (biddingVideoManager2 == null) {
                Intrinsics.y("videoManager");
                biddingVideoManager2 = null;
            }
            biddingVideoManager2.L0("MBVideoTestId");
            BiddingVideoManager biddingVideoManager3 = this.this$0.videoManager;
            if (biddingVideoManager3 == null) {
                Intrinsics.y("videoManager");
                biddingVideoManager3 = null;
            }
            biddingVideoManager3.J0(null);
            BiddingVideoManager biddingVideoManager4 = this.this$0.videoManager;
            if (biddingVideoManager4 == null) {
                Intrinsics.y("videoManager");
                biddingVideoManager4 = null;
            }
            biddingVideoManager4.I0(this.this$0);
            BiddingVideoManager biddingVideoManager5 = this.this$0.videoManager;
            if (biddingVideoManager5 == null) {
                Intrinsics.y("videoManager");
                biddingVideoManager5 = null;
            }
            biddingVideoManager5.K0(this.this$0.videoListener);
            BiddingVideoManager biddingVideoManager6 = this.this$0.videoManager;
            if (biddingVideoManager6 == null) {
                Intrinsics.y("videoManager");
                biddingVideoManager = null;
            } else {
                biddingVideoManager = biddingVideoManager6;
            }
            this.label = 1;
            if (AbsAdBidding.t0(biddingVideoManager, 0, false, this, 3, null) == objF) {
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
        return ((TestAdVideoActivity$onCreate$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
