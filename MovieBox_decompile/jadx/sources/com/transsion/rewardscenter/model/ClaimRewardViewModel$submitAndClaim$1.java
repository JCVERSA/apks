package com.transsion.rewardscenter.model;

import com.transsion.rewardscenter.utils.RewardsCenterApiHelper;
import com.transsion.rewardscenterapi.ClaimReceiverRequest;
import com.transsion.rewardscenterapi.ClaimReceiverResponse;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.rewardscenter.model.ClaimRewardViewModel$submitAndClaim$1", f = "ClaimRewardViewModel.kt", l = {25}, m = "invokeSuspend")
final class ClaimRewardViewModel$submitAndClaim$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final ClaimReceiverRequest $requestBody;
    int label;
    final ClaimRewardViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ClaimRewardViewModel$submitAndClaim$1(ClaimRewardViewModel claimRewardViewModel, ClaimReceiverRequest claimReceiverRequest, Continuation<? super ClaimRewardViewModel$submitAndClaim$1> continuation) {
        super(2, continuation);
        this.this$0 = claimRewardViewModel;
        this.$requestBody = claimReceiverRequest;
    }

    public static final Unit g(ClaimRewardViewModel claimRewardViewModel, String str, String str2) {
        claimRewardViewModel.g().n(Boolean.FALSE);
        claimRewardViewModel.f().n(new Pair(str, str2));
        return Unit.f64096a;
    }

    public static final Unit h(ClaimRewardViewModel claimRewardViewModel, ClaimReceiverRequest claimReceiverRequest, ClaimReceiverResponse claimReceiverResponse) {
        String drawResultId = claimReceiverRequest.getDrawResultId();
        if (drawResultId == null) {
            drawResultId = "";
        }
        claimRewardViewModel.d(drawResultId);
        return Unit.f64096a;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ClaimRewardViewModel$submitAndClaim$1(this.this$0, this.$requestBody, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            this.this$0.g().q(Boxing.a(true));
            RewardsCenterApiHelper rewardsCenterApiHelper = RewardsCenterApiHelper.f49285a;
            ClaimReceiverRequest claimReceiverRequest = this.$requestBody;
            final ClaimRewardViewModel claimRewardViewModel = this.this$0;
            Function2 function2 = new Function2() {
                @Override
                public final Object invoke(Object obj2, Object obj3) {
                    return ClaimRewardViewModel$submitAndClaim$1.g(claimRewardViewModel, (String) obj2, (String) obj3);
                }
            };
            final ClaimRewardViewModel claimRewardViewModel2 = this.this$0;
            final ClaimReceiverRequest claimReceiverRequest2 = this.$requestBody;
            Function1 function1 = new Function1() {
                @Override
                public final Object invoke(Object obj2) {
                    return ClaimRewardViewModel$submitAndClaim$1.h(claimRewardViewModel2, claimReceiverRequest2, (ClaimReceiverResponse) obj2);
                }
            };
            this.label = 1;
            if (rewardsCenterApiHelper.w(claimReceiverRequest, function2, function1, this) == objF) {
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
        return ((ClaimRewardViewModel$submitAndClaim$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
