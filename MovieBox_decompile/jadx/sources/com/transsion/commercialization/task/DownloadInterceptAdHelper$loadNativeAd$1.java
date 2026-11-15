package com.transsion.commercialization.task;

import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingNativeManager;
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
@DebugMetadata(c = "com.transsion.commercialization.task.DownloadInterceptAdHelper$loadNativeAd$1", f = "DownloadInterceptAdHelper.kt", l = {71}, m = "invokeSuspend")
final class DownloadInterceptAdHelper$loadNativeAd$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final DownloadInterceptAdHelper this$0;

    public static final class a extends oh.a {

        final DownloadInterceptAdHelper f42672d;

        a(DownloadInterceptAdHelper downloadInterceptAdHelper) {
            this.f42672d = downloadInterceptAdHelper;
        }

        @Override
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            this.f42672d.m();
        }

        @Override
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            this.f42672d.o(biddingIntermediateMaterialBean);
        }

        @Override
        public void l(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.l(biddingIntermediateMaterialBean);
            AdInterceptDialog adInterceptDialog = this.f42672d.f42671g;
            if (adInterceptDialog != null) {
                adInterceptDialog.E0();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadInterceptAdHelper$loadNativeAd$1(DownloadInterceptAdHelper downloadInterceptAdHelper, Continuation<? super DownloadInterceptAdHelper$loadNativeAd$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadInterceptAdHelper;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadInterceptAdHelper$loadNativeAd$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            this.this$0.f42669e = new BiddingNativeManager();
            BiddingNativeManager biddingNativeManager = this.this$0.f42669e;
            if (biddingNativeManager != null) {
                biddingNativeManager.L0("DownloadInterceptDialogNativeScene");
            }
            BiddingNativeManager biddingNativeManager2 = this.this$0.f42669e;
            if (biddingNativeManager2 != null) {
                biddingNativeManager2.J0(com.transsion.ad.strategy.c.f41178a.a(this.this$0.f42667c));
            }
            BiddingNativeManager biddingNativeManager3 = this.this$0.f42669e;
            if (biddingNativeManager3 != null) {
                biddingNativeManager3.K0(new a(this.this$0));
            }
            BiddingNativeManager biddingNativeManager4 = this.this$0.f42669e;
            if (biddingNativeManager4 != null) {
                this.label = 1;
                if (AbsAdBidding.t0(biddingNativeManager4, 0, false, this, 3, null) == objF) {
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
        return ((DownloadInterceptAdHelper$loadNativeAd$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
