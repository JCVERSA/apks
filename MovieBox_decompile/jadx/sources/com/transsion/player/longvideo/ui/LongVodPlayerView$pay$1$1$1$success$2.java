package com.transsion.player.longvideo.ui;

import com.therouter.TheRouter;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.player.longvideo.ui.LongVodPlayerView$pay$1$1$1$success$2", f = "LongVodPlayerView.kt", l = {3469}, m = "invokeSuspend")
final class LongVodPlayerView$pay$1$1$1$success$2 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final String $orderId;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongVodPlayerView$pay$1$1$1$success$2(String str, Continuation<? super LongVodPlayerView$pay$1$1$1$success$2> continuation) {
        super(2, continuation);
        this.$orderId = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LongVodPlayerView$pay$1$1$1$success$2(this.$orderId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            wj.f fVar = (wj.f) TheRouter.d(wj.f.class, new Object[0]);
            if (fVar != null) {
                String str = this.$orderId;
                if (str == null) {
                    str = "";
                }
                this.label = 1;
                if (wj.f.a.a(fVar, "", str, false, this, 4, null) == objF) {
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
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LongVodPlayerView$pay$1$1$1$success$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
