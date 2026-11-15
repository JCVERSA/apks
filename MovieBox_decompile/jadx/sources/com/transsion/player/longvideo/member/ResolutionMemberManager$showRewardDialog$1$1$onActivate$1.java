package com.transsion.player.longvideo.member;

import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.player.longvideo.member.ResolutionMemberManager$showRewardDialog$1$1$onActivate$1", f = "ResolutionMemberManager.kt", l = {156, 159}, m = "invokeSuspend")
final class ResolutionMemberManager$showRewardDialog$1$1$onActivate$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $isActivate;
    final nw.e $listener;
    final ln.a $longVdPlayerBean;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ResolutionMemberManager$showRewardDialog$1$1$onActivate$1(boolean z10, ln.a aVar, nw.e eVar, Continuation<? super ResolutionMemberManager$showRewardDialog$1$1$onActivate$1> continuation) {
        super(2, continuation);
        this.$isActivate = z10;
        this.$longVdPlayerBean = aVar;
        this.$listener = eVar;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ResolutionMemberManager$showRewardDialog$1$1$onActivate$1(this.$isActivate, this.$longVdPlayerBean, this.$listener, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0041  */
    @Override
    public final Object invokeSuspend(Object obj) {
        nw.e eVar;
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
            eVar = this.$listener;
            if (eVar != null) {
                eVar.a(this.$isActivate);
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        if (this.$isActivate) {
            ResolutionMemberManager resolutionMemberManager = ResolutionMemberManager.f46182a;
            ln.a aVar = this.$longVdPlayerBean;
            this.label = 1;
            if (resolutionMemberManager.j(aVar, this) == objF) {
                return objF;
            }
        }
        this.label = 2;
        if (u0.a(500L, this) == objF) {
            return objF;
        }
        eVar = this.$listener;
        if (eVar != null) {
            eVar.a(this.$isActivate);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((ResolutionMemberManager$showRewardDialog$1$1$onActivate$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
