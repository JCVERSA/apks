package com.transsion.wrapperad.view.cardpage;

import android.content.Context;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.nativead.BiddingSspNativeManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.wrapperad.view.cardpage.NativeCardPageAdHelper$loadBiddingAd$1$1", f = "NativeCardPageAdHelper.kt", l = {85}, m = "invokeSuspend")
final class NativeCardPageAdHelper$loadBiddingAd$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final NativeCardPageView $it;
    int label;
    final NativeCardPageAdHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    NativeCardPageAdHelper$loadBiddingAd$1$1(NativeCardPageAdHelper nativeCardPageAdHelper, NativeCardPageView nativeCardPageView, Continuation<? super NativeCardPageAdHelper$loadBiddingAd$1$1> continuation) {
        super(2, continuation);
        this.this$0 = nativeCardPageAdHelper;
        this.$it = nativeCardPageView;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new NativeCardPageAdHelper$loadBiddingAd$1$1(this.this$0, this.$it, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            this.this$0.f56087k = new BiddingSspNativeManager();
            BiddingSspNativeManager biddingSspNativeManager = this.this$0.f56087k;
            if (biddingSspNativeManager != null) {
                biddingSspNativeManager.L0(this.this$0.f56088l);
            }
            BiddingSspNativeManager biddingSspNativeManager2 = this.this$0.f56087k;
            if (biddingSspNativeManager2 != null) {
                biddingSspNativeManager2.J0(this.this$0.f56089m);
            }
            BiddingSspNativeManager biddingSspNativeManager3 = this.this$0.f56087k;
            if (biddingSspNativeManager3 != null) {
                Context context = this.$it.getContext();
                Intrinsics.g(context, "getContext(...)");
                biddingSspNativeManager3.I0(context);
            }
            BiddingSspNativeManager biddingSspNativeManager4 = this.this$0.f56087k;
            if (biddingSspNativeManager4 != null) {
                biddingSspNativeManager4.K0(this.this$0.f56090n);
            }
            int iH = RangesKt.h(RangesKt.e(com.transsion.ad.scene.a.f41152a.g(this.this$0.f56088l), 1), 3);
            BiddingSspNativeManager biddingSspNativeManager5 = this.this$0.f56087k;
            if (biddingSspNativeManager5 != null) {
                this.label = 1;
                if (AbsAdBidding.t0(biddingSspNativeManager5, iH, false, this, 2, null) == objF) {
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
        return ((NativeCardPageAdHelper$loadBiddingAd$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
