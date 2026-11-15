package com.transsion.player.longvideo.helper;

import com.mbridge.msdk.playercommon.exoplayer2.extractor.ts.PsExtractor;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayBean;
import com.transsion.baselib.db.video.UGCVideoDetailPlayDao;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.player.longvideo.ui.LongVodPlayerView;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.player.longvideo.helper.LongVodSubtitleHelper$loadFromDB$1", f = "LongVodSubtitleHelper.kt", l = {186, PsExtractor.PRIVATE_STREAM_1, 193, 201}, m = "invokeSuspend")
final class LongVodSubtitleHelper$loadFromDB$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final DownloadBean $bean;
    Object L$0;
    Object L$1;
    int label;
    final LongVodSubtitleHelper this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.player.longvideo.helper.LongVodSubtitleHelper$loadFromDB$1$3", f = "LongVodSubtitleHelper.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass3 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
        final DownloadBean $bean;
        final List<ht.a> $list;
        int label;
        final LongVodSubtitleHelper this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(List<ht.a> list, LongVodSubtitleHelper longVodSubtitleHelper, DownloadBean downloadBean, Continuation<? super AnonymousClass3> continuation) {
            super(2, continuation);
            this.$list = list;
            this.this$0 = longVodSubtitleHelper;
            this.$bean = downloadBean;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass3(this.$list, this.this$0, this.$bean, continuation);
        }

        @Override
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.f();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
            List<ht.a> list = this.$list;
            if (list != null && !list.isEmpty()) {
                this.this$0.f46065g.clear();
                this.this$0.f46065g.addAll(this.$list);
                this.this$0.f46066h.f0(this.$list);
            }
            if (yg.l.f76264a.e()) {
                this.this$0.F(this.$bean);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass3) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongVodSubtitleHelper$loadFromDB$1(DownloadBean downloadBean, LongVodSubtitleHelper longVodSubtitleHelper, Continuation<? super LongVodSubtitleHelper$loadFromDB$1> continuation) {
        super(2, continuation);
        this.$bean = downloadBean;
        this.this$0 = longVodSubtitleHelper;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LongVodSubtitleHelper$loadFromDB$1(this.$bean, this.this$0, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0086  */
    /* JADX WARN: Code duplicated, block: B:28:0x008b  */
    /* JADX WARN: Code duplicated, block: B:39:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:40:0x00ba  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:45:0x00f3  */
    /* JADX WARN: Code duplicated, block: B:48:0x0146 A[RETURN] */
    @Override
    public final Object invokeSuspend(Object obj) {
        List list;
        List list2;
        DownloadBean downloadBean;
        DownloadBean downloadBean2;
        UGCVideoDetailPlayBean uGCVideoDetailPlayBean;
        String subtitleSelectId;
        Integer numD;
        a2 a2VarC;
        AnonymousClass3 anonymousClass3;
        VideoDetailPlayBean videoDetailPlayBean;
        String subtitleSelectId2;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                ResultKt.b(obj);
            } else if (i10 == 2) {
                downloadBean2 = (DownloadBean) this.L$1;
                list2 = (List) this.L$0;
                ResultKt.b(obj);
                uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) obj;
                if (uGCVideoDetailPlayBean != null) {
                    subtitleSelectId = uGCVideoDetailPlayBean.getSubtitleSelectId();
                } else {
                    subtitleSelectId = null;
                }
                downloadBean2.setSubtitleSelectId(subtitleSelectId);
                list = list2;
                this.this$0.f46062d.f(this.$bean.getSubtitleSelectId());
                wf.a.C0922a c0922a = wf.a.f74274a;
                boolean zIsUGCVideo = this.$bean.isUGCVideo();
                String subtitleSelectId3 = this.$bean.getSubtitleSelectId();
                String subjectId = this.$bean.getSubjectId();
                String subtitleResId = this.$bean.getSubtitleResId();
                if (list != null) {
                    numD = Boxing.d(list.size());
                } else {
                    numD = null;
                }
                wf.a.C0922a.f(c0922a, LongVodPlayerView.TAG, "loadFromDB ,isUGCVideo:" + zIsUGCVideo + ",subtitleSelectId:" + subtitleSelectId3 + ", subjectId:" + subjectId + ", id:" + subtitleResId + ", size:" + numD, false, 4, null);
                a2VarC = y0.c();
                anonymousClass3 = new AnonymousClass3(list, this.this$0, this.$bean, null);
                this.L$0 = null;
                this.L$1 = null;
                this.label = 4;
                if (kotlinx.coroutines.i.g(a2VarC, anonymousClass3, this) == objF) {
                    return objF;
                }
            } else if (i10 == 3) {
                downloadBean = (DownloadBean) this.L$1;
                list2 = (List) this.L$0;
                ResultKt.b(obj);
                videoDetailPlayBean = (VideoDetailPlayBean) obj;
                if (videoDetailPlayBean != null) {
                    subtitleSelectId2 = videoDetailPlayBean.getSubtitleSelectId();
                } else {
                    subtitleSelectId2 = null;
                }
                downloadBean.setSubtitleSelectId(subtitleSelectId2);
                list = list2;
                this.this$0.f46062d.f(this.$bean.getSubtitleSelectId());
                wf.a.C0922a c0922a2 = wf.a.f74274a;
                boolean zIsUGCVideo2 = this.$bean.isUGCVideo();
                String subtitleSelectId4 = this.$bean.getSubtitleSelectId();
                String subjectId2 = this.$bean.getSubjectId();
                String subtitleResId2 = this.$bean.getSubtitleResId();
                if (list != null) {
                    numD = Boxing.d(list.size());
                } else {
                    numD = null;
                }
                wf.a.C0922a.f(c0922a2, LongVodPlayerView.TAG, "loadFromDB ,isUGCVideo:" + zIsUGCVideo2 + ",subtitleSelectId:" + subtitleSelectId4 + ", subjectId:" + subjectId2 + ", id:" + subtitleResId2 + ", size:" + numD, false, 4, null);
                a2VarC = y0.c();
                anonymousClass3 = new AnonymousClass3(list, this.this$0, this.$bean, null);
                this.L$0 = null;
                this.L$1 = null;
                this.label = 4;
                if (kotlinx.coroutines.i.g(a2VarC, anonymousClass3, this) == objF) {
                    return objF;
                }
            } else {
                if (i10 != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        com.transsion.subtitle.h hVarB = com.transsion.subtitle.h.f52857a.b();
        String subtitleResId3 = this.$bean.getSubtitleResId();
        this.label = 1;
        obj = hVarB.a(subtitleResId3, this);
        if (obj == objF) {
            return objF;
        }
        list = (List) obj;
        if (this.$bean.isUGCVideo()) {
            String ugcVideoCollectionId = this.$bean.getUgcVideoCollectionId();
            if (ugcVideoCollectionId != null) {
                DownloadBean downloadBean3 = this.$bean;
                UGCVideoDetailPlayDao uGCVideoDetailPlayDaoN = this.this$0.N();
                this.L$0 = list;
                this.L$1 = downloadBean3;
                this.label = 2;
                Object objC = uGCVideoDetailPlayDaoN.c(ugcVideoCollectionId, this);
                if (objC == objF) {
                    return objF;
                }
                list2 = list;
                obj = objC;
                downloadBean2 = downloadBean3;
                uGCVideoDetailPlayBean = (UGCVideoDetailPlayBean) obj;
                if (uGCVideoDetailPlayBean != null) {
                    subtitleSelectId = uGCVideoDetailPlayBean.getSubtitleSelectId();
                } else {
                    subtitleSelectId = null;
                }
                downloadBean2.setSubtitleSelectId(subtitleSelectId);
                list = list2;
            }
        } else {
            String subjectId3 = this.$bean.getSubjectId();
            if (subjectId3 != null) {
                DownloadBean downloadBean4 = this.$bean;
                VideoDetailPlayDao videoDetailPlayDaoO = this.this$0.O();
                this.L$0 = list;
                this.L$1 = downloadBean4;
                this.label = 3;
                Object objC2 = videoDetailPlayDaoO.c(subjectId3, this);
                if (objC2 == objF) {
                    return objF;
                }
                list2 = list;
                obj = objC2;
                downloadBean = downloadBean4;
                videoDetailPlayBean = (VideoDetailPlayBean) obj;
                if (videoDetailPlayBean != null) {
                    subtitleSelectId2 = videoDetailPlayBean.getSubtitleSelectId();
                } else {
                    subtitleSelectId2 = null;
                }
                downloadBean.setSubtitleSelectId(subtitleSelectId2);
                list = list2;
            }
        }
        this.this$0.f46062d.f(this.$bean.getSubtitleSelectId());
        wf.a.C0922a c0922a3 = wf.a.f74274a;
        boolean zIsUGCVideo3 = this.$bean.isUGCVideo();
        String subtitleSelectId5 = this.$bean.getSubtitleSelectId();
        String subjectId4 = this.$bean.getSubjectId();
        String subtitleResId4 = this.$bean.getSubtitleResId();
        if (list != null) {
            numD = Boxing.d(list.size());
        } else {
            numD = null;
        }
        wf.a.C0922a.f(c0922a3, LongVodPlayerView.TAG, "loadFromDB ,isUGCVideo:" + zIsUGCVideo3 + ",subtitleSelectId:" + subtitleSelectId5 + ", subjectId:" + subjectId4 + ", id:" + subtitleResId4 + ", size:" + numD, false, 4, null);
        a2VarC = y0.c();
        anonymousClass3 = new AnonymousClass3(list, this.this$0, this.$bean, null);
        this.L$0 = null;
        this.L$1 = null;
        this.label = 4;
        if (kotlinx.coroutines.i.g(a2VarC, anonymousClass3, this) == objF) {
            return objF;
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LongVodSubtitleHelper$loadFromDB$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
