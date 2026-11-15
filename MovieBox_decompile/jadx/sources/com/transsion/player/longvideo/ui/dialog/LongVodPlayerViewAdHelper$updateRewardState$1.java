package com.transsion.player.longvideo.ui.dialog;

import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
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
@DebugMetadata(c = "com.transsion.player.longvideo.ui.dialog.LongVodPlayerViewAdHelper$updateRewardState$1", f = "LongVodPlayerViewAdHelper.kt", l = {789, 793}, m = "invokeSuspend")
final class LongVodPlayerViewAdHelper$updateRewardState$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final LongVodPlayerViewAdHelper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongVodPlayerViewAdHelper$updateRewardState$1(LongVodPlayerViewAdHelper longVodPlayerViewAdHelper, Continuation<? super LongVodPlayerViewAdHelper$updateRewardState$1> continuation) {
        super(2, continuation);
        this.this$0 = longVodPlayerViewAdHelper;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LongVodPlayerViewAdHelper$updateRewardState$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        LongVodPlayerViewAdHelper longVodPlayerViewAdHelper;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                ResultKt.b(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                longVodPlayerViewAdHelper = (LongVodPlayerViewAdHelper) this.L$0;
                ResultKt.b(obj);
            }
            wf.a.C0922a.g(wf.a.f74274a, longVodPlayerViewAdHelper.I3() + " --> updateRewardUnlock videoDetailPlayDao --> insertOrUpdate()", false, 2, null);
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        LongVodPlayerViewAdHelper longVodPlayerViewAdHelper2 = this.this$0;
        this.label = 1;
        obj = longVodPlayerViewAdHelper2.R3(this);
        if (obj == objF) {
            return objF;
        }
        VideoDetailPlayBean videoDetailPlayBean = (VideoDetailPlayBean) obj;
        if (videoDetailPlayBean != null) {
            LongVodPlayerViewAdHelper longVodPlayerViewAdHelper3 = this.this$0;
            videoDetailPlayBean.setRewardUnlock(longVodPlayerViewAdHelper3.Y);
            videoDetailPlayBean.setRewardPlayed(longVodPlayerViewAdHelper3.Z);
            videoDetailPlayBean.setRewardFree(longVodPlayerViewAdHelper3.f46321a0);
            VideoDetailPlayDao videoDetailPlayDaoS3 = longVodPlayerViewAdHelper3.S3();
            this.L$0 = longVodPlayerViewAdHelper3;
            this.label = 2;
            if (videoDetailPlayDaoS3.p(videoDetailPlayBean, this) == objF) {
                return objF;
            }
            longVodPlayerViewAdHelper = longVodPlayerViewAdHelper3;
            wf.a.C0922a.g(wf.a.f74274a, longVodPlayerViewAdHelper.I3() + " --> updateRewardUnlock videoDetailPlayDao --> insertOrUpdate()", false, 2, null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LongVodPlayerViewAdHelper$updateRewardState$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
