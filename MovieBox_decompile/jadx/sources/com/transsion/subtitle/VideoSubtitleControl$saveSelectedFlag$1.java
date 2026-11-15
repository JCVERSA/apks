package com.transsion.subtitle;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.subtitle_download.db.SubtitleDownloadTable;
import com.transsnet.downloader.manager.DownloadEsHelper;
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
@DebugMetadata(c = "com.transsion.subtitle.VideoSubtitleControl$saveSelectedFlag$1", f = "VideoSubtitleControl.kt", l = {843, 848}, m = "invokeSuspend")
final class VideoSubtitleControl$saveSelectedFlag$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final ht.a $bean;
    private Object L$0;
    int label;
    final VideoSubtitleControl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VideoSubtitleControl$saveSelectedFlag$1(VideoSubtitleControl videoSubtitleControl, ht.a aVar, Continuation<? super VideoSubtitleControl$saveSelectedFlag$1> continuation) {
        super(2, continuation);
        this.this$0 = videoSubtitleControl;
        this.$bean = aVar;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        VideoSubtitleControl$saveSelectedFlag$1 videoSubtitleControl$saveSelectedFlag$1 = new VideoSubtitleControl$saveSelectedFlag$1(this.this$0, this.$bean, continuation);
        videoSubtitleControl$saveSelectedFlag$1.L$0 = obj;
        return videoSubtitleControl$saveSelectedFlag$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        String resourceId;
        SubtitleDownloadTable subtitleDownloadTableB;
        String id2;
        String subjectId;
        SubtitleDownloadTable subtitleDownloadTableB2;
        String id3;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            n0 n0Var = (n0) this.L$0;
            DownloadBean downloadBean = this.this$0.f52686p;
            String str = "";
            if (downloadBean == null || !downloadBean.getIsStreamVideoDetail()) {
                a.f52708a.a(n0Var.getClass().getSimpleName() + " --> saveSelectedFlag() --> saveSelectedFlag -- download");
                DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
                DownloadBean downloadBean2 = this.this$0.f52686p;
                if (downloadBean2 == null || (resourceId = downloadBean2.getResourceId()) == null) {
                    resourceId = "";
                }
                ht.a aVar = this.$bean;
                if (aVar != null && (subtitleDownloadTableB = aVar.b()) != null && (id2 = subtitleDownloadTableB.getId()) != null) {
                    str = id2;
                }
                this.label = 2;
                if (downloadEsHelperA.h0(resourceId, str, this) == objF) {
                    return objF;
                }
            } else {
                a.f52708a.a(n0Var.getClass().getSimpleName() + " --> saveSelectedFlag() --> saveSelectedFlag -- dash");
                VideoDetailPlayDao videoDetailPlayDaoG = this.this$0.G();
                DownloadBean downloadBean3 = this.this$0.f52686p;
                if (downloadBean3 == null || (subjectId = downloadBean3.getSubjectId()) == null) {
                    subjectId = "";
                }
                ht.a aVar2 = this.$bean;
                if (aVar2 != null && (subtitleDownloadTableB2 = aVar2.b()) != null && (id3 = subtitleDownloadTableB2.getId()) != null) {
                    str = id3;
                }
                this.label = 1;
                if (videoDetailPlayDaoG.b(subjectId, str, this) == objF) {
                    return objF;
                }
            }
        } else {
            if (i10 != 1 && i10 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((VideoSubtitleControl$saveSelectedFlag$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
