package com.transsion.ad.bidding.base;

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
@DebugMetadata(c = "com.transsion.ad.bidding.base.AbsAdBidding$innerLoadAd$2$2$1", f = "AbsAdBidding.kt", l = {789}, m = "invokeSuspend")
final class AbsAdBidding$innerLoadAd$2$2$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final AbsAdBidding this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AbsAdBidding$innerLoadAd$2$2$1(AbsAdBidding absAdBidding, Continuation<? super AbsAdBidding$innerLoadAd$2$2$1> continuation) {
        super(2, continuation);
        this.this$0 = absAdBidding;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AbsAdBidding$innerLoadAd$2$2$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            AbsAdBidding absAdBidding = this.this$0;
            this.label = 1;
            if (absAdBidding.V("竞价时间到，开始竞价", this) == objF) {
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
        return ((AbsAdBidding$innerLoadAd$2$2$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
