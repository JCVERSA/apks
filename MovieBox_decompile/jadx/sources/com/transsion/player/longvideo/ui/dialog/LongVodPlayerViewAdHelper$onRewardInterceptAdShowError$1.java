package com.transsion.player.longvideo.ui.dialog;

import android.content.Context;
import android.view.View;
import com.tn.lib.widget.R$string;
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
@DebugMetadata(c = "com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper$onRewardInterceptAdShowError$1", f = "LongVodPlayerViewAdHelper.kt", l = {}, m = "invokeSuspend")
final class LongVodPlayerViewAdHelper$onRewardInterceptAdShowError$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final LongVodPlayerViewAdHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongVodPlayerViewAdHelper$onRewardInterceptAdShowError$1(LongVodPlayerViewAdHelper longVodPlayerViewAdHelper, Continuation<? super LongVodPlayerViewAdHelper$onRewardInterceptAdShowError$1> continuation) {
        super(2, continuation);
        this.this$0 = longVodPlayerViewAdHelper;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LongVodPlayerViewAdHelper$onRewardInterceptAdShowError$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        View root;
        Context context;
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        String str = this.this$0.f46329i0;
        if (Intrinsics.c(str, "StreamVideoInterceptRewarded")) {
            this.this$0.G3();
            this.this$0.t4();
            fh.b.a aVar = fh.b.f60176a;
            mn.j jVar = this.this$0.R;
            aVar.e((jVar == null || (root = jVar.getRoot()) == null || (context = root.getContext()) == null) ? null : context.getString(R$string.common_failed));
        } else if (Intrinsics.c(str, "StreamVideoInterceptInterstitial")) {
            this.this$0.X3();
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LongVodPlayerViewAdHelper$onRewardInterceptAdShowError$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
