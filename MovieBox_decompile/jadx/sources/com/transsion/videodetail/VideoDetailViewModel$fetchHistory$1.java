package com.transsion.videodetail;

import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.videodetail.util.StreamFloatManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.videodetail.VideoDetailViewModel$fetchHistory$1", f = "VideoDetailViewModel.kt", l = {120}, m = "invokeSuspend")
final class VideoDetailViewModel$fetchHistory$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final String $subjectId;
    int label;
    final VideoDetailViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VideoDetailViewModel$fetchHistory$1(VideoDetailViewModel videoDetailViewModel, String str, Continuation<? super VideoDetailViewModel$fetchHistory$1> continuation) {
        super(2, continuation);
        this.this$0 = videoDetailViewModel;
        this.$subjectId = str;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new VideoDetailViewModel$fetchHistory$1(this.this$0, this.$subjectId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            VideoDetailPlayDao videoDetailPlayDaoA = this.this$0.A();
            String str = this.$subjectId;
            this.label = 1;
            obj = videoDetailPlayDaoA.c(str, this);
            if (obj == objF) {
                return objF;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        VideoDetailPlayBean videoDetailPlayBean = (VideoDetailPlayBean) obj;
        if (videoDetailPlayBean != null) {
            String str2 = this.$subjectId + "+" + videoDetailPlayBean.getSe() + "+" + videoDetailPlayBean.getEp();
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.f(c0922a, "VideoDetail", "fetchHistory--key:" + str2, false, 4, null);
            Long lG = StreamFloatManager.f55703b.g(str2);
            if (lG != null) {
                long jLongValue = lG.longValue();
                wf.a.C0922a.r(c0922a, "VideoDetail", new String[]{"update--key:" + str2 + ", value:" + jLongValue + ",last:" + videoDetailPlayBean.getProgress()}, false, 4, null);
                if (jLongValue > 0 && jLongValue != videoDetailPlayBean.getProgress()) {
                    videoDetailPlayBean.setProgress(jLongValue);
                }
            }
        }
        wf.a.C0922a.r(wf.a.f74274a, "VideoDetail", new String[]{"fetchHistory  subjectId:" + this.$subjectId + ",history:" + videoDetailPlayBean}, false, 4, null);
        this.this$0.f55479g.q(videoDetailPlayBean);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((VideoDetailViewModel$fetchHistory$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
