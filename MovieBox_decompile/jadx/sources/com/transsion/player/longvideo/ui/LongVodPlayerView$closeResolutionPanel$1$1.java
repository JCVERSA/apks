package com.transsion.player.longvideo.ui;

import com.transsion.player.longvideo.member.ResolutionMemberManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.player.longvideo.ui.LongVodPlayerView$closeResolutionPanel$1$1", f = "LongVodPlayerView.kt", l = {3383}, m = "invokeSuspend")
final class LongVodPlayerView$closeResolutionPanel$1$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    int label;
    final LongVodPlayerView this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongVodPlayerView$closeResolutionPanel$1$1(LongVodPlayerView longVodPlayerView, Continuation<? super LongVodPlayerView$closeResolutionPanel$1$1> continuation) {
        super(2, continuation);
        this.this$0 = longVodPlayerView;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LongVodPlayerView$closeResolutionPanel$1$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            ResolutionMemberManager resolutionMemberManager = ResolutionMemberManager.f46182a;
            ln.a aVar = this.this$0.curBean;
            this.label = 1;
            if (resolutionMemberManager.j(aVar, this) == objF) {
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
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LongVodPlayerView$closeResolutionPanel$1$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
