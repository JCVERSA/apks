package com.transsion.search.ad;

import com.transsion.ad.bidding.base.AbsAdBidding;
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
@DebugMetadata(c = "com.transsion.search.ad.SearchHotAdHelper$loadBiddingAd$1", f = "SearchHotAdHelper.kt", l = {138}, m = "invokeSuspend")
final class SearchHotAdHelper$loadBiddingAd$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final SearchHotAdHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SearchHotAdHelper$loadBiddingAd$1(SearchHotAdHelper searchHotAdHelper, Continuation<? super SearchHotAdHelper$loadBiddingAd$1> continuation) {
        super(2, continuation);
        this.this$0 = searchHotAdHelper;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SearchHotAdHelper$loadBiddingAd$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            this.this$0.f49953e = new BiddingNativeManager();
            BiddingNativeManager biddingNativeManager = this.this$0.f49953e;
            if (biddingNativeManager != null) {
                SearchHotAdHelper searchHotAdHelper = this.this$0;
                biddingNativeManager.L0("SearchHotNativeScene");
                biddingNativeManager.K0(searchHotAdHelper.f49961m);
                this.L$0 = biddingNativeManager;
                this.label = 1;
                if (AbsAdBidding.t0(biddingNativeManager, 0, false, this, 3, null) == objF) {
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
        return ((SearchHotAdHelper$loadBiddingAd$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
