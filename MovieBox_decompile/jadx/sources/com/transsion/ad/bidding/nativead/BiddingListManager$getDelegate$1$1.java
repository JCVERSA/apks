package com.transsion.ad.bidding.nativead;

import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.bidding.base.AbsAdBidding;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
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
@DebugMetadata(c = "com.transsion.ad.bidding.nativead.BiddingListManager$getDelegate$1$1", f = "BiddingListManager.kt", l = {252}, m = "invokeSuspend")
final class BiddingListManager$getDelegate$1$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final BiddingNativeManager $nativeManager;
    int label;
    final BiddingListManager this$0;

    public static final class a extends oh.a {

        final BiddingListManager f40989d;

        a(BiddingListManager biddingListManager) {
            this.f40989d = biddingListManager;
        }

        @Override
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            BiddingNativeManager biddingNativeManager = this.f40989d.f40975c;
            if (biddingNativeManager != null) {
                biddingNativeManager.U();
            }
            this.f40989d.f40975c = null;
        }

        @Override
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            if (this.f40989d.f40981i) {
                this.f40989d.w();
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BiddingListManager$getDelegate$1$1(BiddingNativeManager biddingNativeManager, BiddingListManager biddingListManager, Continuation<? super BiddingListManager$getDelegate$1$1> continuation) {
        super(2, continuation);
        this.$nativeManager = biddingNativeManager;
        this.this$0 = biddingListManager;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BiddingListManager$getDelegate$1$1(this.$nativeManager, this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            this.$nativeManager.J0(this.this$0.f40973a);
            this.$nativeManager.L0(this.this$0.f40982j);
            this.$nativeManager.M0(this.this$0.f40983k);
            this.$nativeManager.K0(new a(this.this$0));
            BiddingNativeManager biddingNativeManager = this.$nativeManager;
            this.label = 1;
            if (AbsAdBidding.t0(biddingNativeManager, 0, false, this, 3, null) == objF) {
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
        return ((BiddingListManager$getDelegate$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
