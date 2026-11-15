package com.transsion.player.longvideo.ui.dialog;

import androidx.constraintlayout.widget.ConstraintLayout;
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
@DebugMetadata(c = "com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper$onRewardInterceptAdShow$1", f = "LongVodPlayerViewAdHelper.kt", l = {}, m = "invokeSuspend")
final class LongVodPlayerViewAdHelper$onRewardInterceptAdShow$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final LongVodPlayerViewAdHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongVodPlayerViewAdHelper$onRewardInterceptAdShow$1(LongVodPlayerViewAdHelper longVodPlayerViewAdHelper, Continuation<? super LongVodPlayerViewAdHelper$onRewardInterceptAdShow$1> continuation) {
        super(2, continuation);
        this.this$0 = longVodPlayerViewAdHelper;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LongVodPlayerViewAdHelper$onRewardInterceptAdShow$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        mn.i iVar;
        ConstraintLayout root;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        this.this$0.H(true);
        mn.j jVar = this.this$0.R;
        if (jVar != null && (iVar = jVar.f66587q) != null && (root = iVar.getRoot()) != null) {
            uf.c.g(root);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LongVodPlayerViewAdHelper$onRewardInterceptAdShow$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
