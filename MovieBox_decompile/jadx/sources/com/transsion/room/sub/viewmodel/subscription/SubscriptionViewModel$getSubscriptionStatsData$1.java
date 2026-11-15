package com.transsion.room.sub.viewmodel.subscription;

import com.google.android.gms.fido.u2f.api.common.RegisterRequest;
import com.tn.lib.net.bean.BaseDto;
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
@DebugMetadata(c = "com.transsion.room.sub.viewmodel.subscription.SubscriptionViewModel$getSubscriptionStatsData$1", f = "SubscriptionViewModel.kt", l = {RegisterRequest.U2F_V1_CHALLENGE_BYTE_LENGTH}, m = "invokeSuspend")
final class SubscriptionViewModel$getSubscriptionStatsData$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final String $uid;
    int label;
    final SubscriptionViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubscriptionViewModel$getSubscriptionStatsData$1(SubscriptionViewModel subscriptionViewModel, String str, Continuation<? super SubscriptionViewModel$getSubscriptionStatsData$1> continuation) {
        super(2, continuation);
        this.this$0 = subscriptionViewModel;
        this.$uid = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubscriptionViewModel$getSubscriptionStatsData$1(this.this$0, this.$uid, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                pp.a aVar = this.this$0.f49787i;
                String strA = gg.a.f61067a.a();
                String str = this.$uid;
                this.label = 1;
                obj = aVar.a(strA, str, this);
                if (obj == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            this.this$0.d().n(((BaseDto) obj).getData());
        } catch (Exception e10) {
            this.this$0.d().n(null);
            e10.printStackTrace();
            wf.a.C0922a c0922a = wf.a.f74274a;
            String simpleName = SubscriptionViewModel.class.getSimpleName();
            Intrinsics.g(simpleName, "getSimpleName(...)");
            c0922a.i(simpleName, "exceptionHandler " + e10.getMessage(), true);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SubscriptionViewModel$getSubscriptionStatsData$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
