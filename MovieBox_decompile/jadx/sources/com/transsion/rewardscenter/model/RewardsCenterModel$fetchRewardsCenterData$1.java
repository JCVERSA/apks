package com.transsion.rewardscenter.model;

import com.tn.lib.net.bean.BaseDto;
import com.transsion.rewardscenter.utils.n;
import com.transsion.rewardscenterapi.RewardsCenterData;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.rewardscenter.model.RewardsCenterModel$fetchRewardsCenterData$1", f = "RewardsCenterModel.kt", l = {93}, m = "invokeSuspend")
final class RewardsCenterModel$fetchRewardsCenterData$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Function0<Unit> $callback;
    private Object L$0;
    int label;
    final RewardsCenterModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RewardsCenterModel$fetchRewardsCenterData$1(Function0<Unit> function0, RewardsCenterModel rewardsCenterModel, Continuation<? super RewardsCenterModel$fetchRewardsCenterData$1> continuation) {
        super(2, continuation);
        this.$callback = function0;
        this.this$0 = rewardsCenterModel;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        RewardsCenterModel$fetchRewardsCenterData$1 rewardsCenterModel$fetchRewardsCenterData$1 = new RewardsCenterModel$fetchRewardsCenterData$1(this.$callback, this.this$0, continuation);
        rewardsCenterModel$fetchRewardsCenterData$1.L$0 = obj;
        return rewardsCenterModel$fetchRewardsCenterData$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objM453constructorimpl;
        Object objD;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                RewardsCenterModel rewardsCenterModel = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                xo.a aVarS = rewardsCenterModel.s();
                this.label = 1;
                objD = xo.a.C0943a.d(aVarS, null, this, 1, null);
                if (objD == objF) {
                    return objF;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
                objD = obj;
            }
            objM453constructorimpl = Result.m453constructorimpl((BaseDto) objD);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        RewardsCenterModel rewardsCenterModel2 = this.this$0;
        if (Result.m460isSuccessimpl(objM453constructorimpl)) {
            BaseDto baseDto = (BaseDto) objM453constructorimpl;
            if (n.a(baseDto)) {
                RewardsCenterData rewardsCenterData = (RewardsCenterData) baseDto.getData();
                if (rewardsCenterData != null) {
                    rewardsCenterModel2.p().q(rewardsCenterData.getLottery());
                    rewardsCenterModel2.x().q(rewardsCenterData.getUser());
                    rewardsCenterModel2.r().q(rewardsCenterData.getRedeem());
                    rewardsCenterModel2.v().q(rewardsCenterData.getTask());
                    rewardsCenterModel2.t().q(rewardsCenterData.getRule());
                    wf.a.C0922a.f(wf.a.f74274a, "RewardsCenter", "fetchRewardsCenterData onSuccess: " + rewardsCenterData, false, 4, null);
                }
            } else {
                wf.a.C0922a.f(wf.a.f74274a, "RewardsCenter", "fetchRewardsCenterData onFailure: " + baseDto.getCode() + ", " + baseDto.getMsg(), false, 4, null);
            }
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            wf.a.C0922a.f(wf.a.f74274a, "RewardsCenter", "fetchRewardsCenterData error: " + thM456exceptionOrNullimpl.getMessage(), false, 4, null);
        }
        Function0<Unit> function0 = this.$callback;
        if (function0 != null) {
            function0.invoke();
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((RewardsCenterModel$fetchRewardsCenterData$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
