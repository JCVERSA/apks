package com.transsion.rewardscenter.task.dada;

import androidx.p009lifecycle.b0;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.transsion.rewardscenter.model.RewardsCenterModel;
import com.transsion.rewardscenter.ui.RewardsCenterFragment;
import com.transsion.rewardscenter.utils.RewardsCenterApiHelper;
import com.transsion.rewardscenterapi.DaDaInfo;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.rewardscenter.task.dada.DadaActivateView$checkSetDefault$1", f = "DaDaActivateView.kt", l = {401, TTAdConstant.DEEPLINK_UNAVAILABLE_CODE}, m = "invokeSuspend")
final class DadaActivateView$checkSetDefault$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Function1<String, Unit> $onFailure;
    final Function1<Boolean, Unit> $onSuccess;
    final long $time;
    int label;
    final DadaActivateView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DadaActivateView$checkSetDefault$1(DadaActivateView dadaActivateView, long j10, Function1<? super String, Unit> function1, Function1<? super Boolean, Unit> function2, Continuation<? super DadaActivateView$checkSetDefault$1> continuation) {
        super(2, continuation);
        this.this$0 = dadaActivateView;
        this.$time = j10;
        this.$onFailure = function1;
        this.$onSuccess = function2;
    }

    public static final Unit g(DadaActivateView dadaActivateView, Function1 function1, String str, String str2) {
        RewardsCenterModel rewardsCenterModelC;
        b0 b0VarO;
        zo.a aVar = dadaActivateView.ctxConfig;
        if (aVar != null && (rewardsCenterModelC = aVar.c()) != null && (b0VarO = rewardsCenterModelC.o()) != null) {
            b0VarO.n(Boolean.FALSE);
        }
        if (function1 != null) {
            function1.invoke(str2);
        }
        return Unit.f64096a;
    }

    public static final Unit h(DadaActivateView dadaActivateView, Function1 function1, DaDaInfo daDaInfo) {
        RewardsCenterModel rewardsCenterModelC;
        b0 b0VarO;
        zo.a aVar = dadaActivateView.ctxConfig;
        if (aVar != null && (rewardsCenterModelC = aVar.c()) != null && (b0VarO = rewardsCenterModelC.o()) != null) {
            b0VarO.n(Boolean.FALSE);
        }
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(daDaInfo != null ? daDaInfo.isSetDefault() : false));
        }
        wf.a.C0922a.f(wf.a.f74274a, "RewardsCenter", "--> checkDadaSetDefault: " + daDaInfo, false, 4, null);
        if (daDaInfo != null && daDaInfo.isSetDefault()) {
            dadaActivateView.setTaskState(DadaTaskState.SET_DEFAULT);
        }
        return Unit.f64096a;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DadaActivateView$checkSetDefault$1(this.this$0, this.$time, this.$onFailure, this.$onSuccess, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        WeakReference weakReferenceA;
        RewardsCenterFragment rewardsCenterFragment;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                ResultKt.b(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        zo.a aVar = this.this$0.ctxConfig;
        if (aVar != null && (weakReferenceA = aVar.a()) != null && (rewardsCenterFragment = (RewardsCenterFragment) weakReferenceA.get()) != null) {
            rewardsCenterFragment.showLoading();
        }
        long j10 = this.$time;
        if (j10 > 0) {
            this.label = 1;
            if (u0.a(j10, this) == objF) {
                return objF;
            }
        }
        RewardsCenterApiHelper rewardsCenterApiHelper = RewardsCenterApiHelper.f49285a;
        final DadaActivateView dadaActivateView = this.this$0;
        final Function1<String, Unit> function1 = this.$onFailure;
        Function2 function2 = new Function2() {
            @Override
            public final Object invoke(Object obj2, Object obj3) {
                return DadaActivateView$checkSetDefault$1.g(dadaActivateView, function1, (String) obj2, (String) obj3);
            }
        };
        final DadaActivateView dadaActivateView2 = this.this$0;
        final Function1<Boolean, Unit> function3 = this.$onSuccess;
        Function1 function4 = new Function1() {
            @Override
            public final Object invoke(Object obj2) {
                return DadaActivateView$checkSetDefault$1.h(dadaActivateView2, function3, (DaDaInfo) obj2);
            }
        };
        this.label = 2;
        if (rewardsCenterApiHelper.j(function2, function4, this) == objF) {
            return objF;
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DadaActivateView$checkSetDefault$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
