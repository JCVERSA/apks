package com.transsion.player.longvideo.ui.dialog;

import com.therouter.TheRouter;
import com.transsion.memberapi.MemberSceneType;
import com.transsion.player.longvideo.ui.LongVodPlayerView;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.u0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper$showRewardInterceptView$1$4$1", f = "LongVodPlayerViewAdHelper.kt", l = {589}, m = "invokeSuspend")
final class LongVodPlayerViewAdHelper$showRewardInterceptView$1$4$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final LongVodPlayerViewAdHelper this$0;

    public static final class a implements wj.g {

        final LongVodPlayerViewAdHelper f46343a;

        a(LongVodPlayerViewAdHelper longVodPlayerViewAdHelper) {
            this.f46343a = longVodPlayerViewAdHelper;
        }

        @Override
        public void a(boolean z10) {
            wj.g.a.a(this, z10);
        }

        @Override
        public void onFail() {
            wj.h.f74282a.a(this.f46343a.I3() + " --> interception()--> onFail() --> 失败了");
        }

        @Override
        public void onSuccess() {
            wj.h.f74282a.a(this.f46343a.I3() + " --> interception() --> onSuccess() --> 流媒体解锁成功");
            this.f46343a.G4();
            this.f46343a.z3();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongVodPlayerViewAdHelper$showRewardInterceptView$1$4$1(LongVodPlayerViewAdHelper longVodPlayerViewAdHelper, Continuation<? super LongVodPlayerViewAdHelper$showRewardInterceptView$1$4$1> continuation) {
        super(2, continuation);
        this.this$0 = longVodPlayerViewAdHelper;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LongVodPlayerViewAdHelper$showRewardInterceptView$1$4$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            if (this.this$0.Q0()) {
                LongVodPlayerView longVodPlayerView = this.this$0.f46341u0;
                if (longVodPlayerView != null) {
                    LongVodPlayerView.backClick$default(longVodPlayerView, false, 1, null);
                }
                this.label = 1;
                if (u0.a(200L, this) == objF) {
                    return objF;
                }
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        wj.f fVar = (wj.f) TheRouter.d(wj.f.class, new Object[0]);
        if (fVar != null) {
            fVar.e(Boxing.d(0), "", new a(this.this$0), MemberSceneType.SCENE_STREAM_ACTIVATE);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LongVodPlayerViewAdHelper$showRewardInterceptView$1$4$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
