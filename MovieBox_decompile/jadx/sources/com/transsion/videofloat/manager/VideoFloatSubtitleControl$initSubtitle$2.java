package com.transsion.videofloat.manager;

import com.cloud.tmc.kernel.constants.TmcConstants;
import com.transsion.baselib.db.download.DownloadBean;
import com.transsion.baselib.db.video.VideoDetailPlayBean;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.videofloat.bean.FloatPlayType;
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
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.a2;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.videofloat.manager.VideoFloatSubtitleControl$initSubtitle$2", f = "VideoFloatSubtitleControl.kt", l = {75, 78, TmcConstants.NOTIFY_ADDHOME_GUIDE_BOTTOM_SHOW, 84}, m = "invokeSuspend")
@SourceDebugExtension
final class VideoFloatSubtitleControl$initSubtitle$2 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final VideoFloatSubtitleControl this$0;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
    @DebugMetadata(c = "com.transsion.videofloat.manager.VideoFloatSubtitleControl$initSubtitle$2$1", f = "VideoFloatSubtitleControl.kt", l = {}, m = "invokeSuspend")
    static final class AnonymousClass1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
        final List<ht.a> $list;
        final String $subtitleSavedSelectId;
        int label;
        final VideoFloatSubtitleControl this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(List<ht.a> list, VideoFloatSubtitleControl videoFloatSubtitleControl, String str, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$list = list;
            this.this$0 = videoFloatSubtitleControl;
            this.$subtitleSavedSelectId = str;
        }

        @Override
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new AnonymousClass1(this.$list, this.this$0, this.$subtitleSavedSelectId, continuation);
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
                this.this$0.n(this.$subtitleSavedSelectId, this.$list);
                this.this$0.t(this.$list);
            }
            return Unit.f64096a;
        }

        @Override
        public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    VideoFloatSubtitleControl$initSubtitle$2(VideoFloatSubtitleControl videoFloatSubtitleControl, Continuation<? super VideoFloatSubtitleControl$initSubtitle$2> continuation) {
        super(2, continuation);
        this.this$0 = videoFloatSubtitleControl;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new VideoFloatSubtitleControl$initSubtitle$2(this.this$0, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0061  */
    /* JADX WARN: Code duplicated, block: B:23:0x0067  */
    /* JADX WARN: Code duplicated, block: B:31:0x0088  */
    /* JADX WARN: Code duplicated, block: B:32:0x008d  */
    /* JADX WARN: Code duplicated, block: B:34:0x0090  */
    /* JADX WARN: Code duplicated, block: B:37:0x00ad A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:40:0x00c4  */
    /* JADX WARN: Code duplicated, block: B:41:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:44:0x00ff A[RETURN] */
    @Override
    public final Object invokeSuspend(Object obj) {
        VideoDetailPlayBean videoDetailPlayBean;
        String subtitleSelectId;
        String str;
        DownloadBean downloadBean;
        String subtitleSelectId2;
        List list;
        Integer numD;
        a2 a2VarC;
        AnonymousClass1 anonymousClass1;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            if (this.this$0.f55729b.i() == FloatPlayType.STREAM) {
                VideoDetailPlayDao videoDetailPlayDaoL = this.this$0.l();
                String strR = this.this$0.f55729b.r();
                this.label = 1;
                obj = videoDetailPlayDaoL.c(strR, this);
                if (obj == objF) {
                    return objF;
                }
                videoDetailPlayBean = (VideoDetailPlayBean) obj;
                if (videoDetailPlayBean != null) {
                    subtitleSelectId = videoDetailPlayBean.getSubtitleSelectId();
                    str = subtitleSelectId;
                }
                com.transsion.subtitle.h hVarB = com.transsion.subtitle.h.f52857a.b();
                String strT = this.this$0.f55729b.t();
                this.L$0 = str;
                this.label = 3;
                obj = hVarB.a(strT, this);
                if (obj == objF) {
                    return objF;
                }
                list = (List) obj;
                wf.a.C0922a c0922a = wf.a.f74274a;
                String str2 = this.this$0.f55730c;
                String strT2 = this.this$0.f55729b.t();
                if (list != null) {
                    numD = Boxing.d(list.size());
                } else {
                    numD = null;
                }
                c0922a.c(str2, "float subtitle----loadFromDB id:" + strT2 + ", size:" + numD, true);
                a2VarC = y0.c();
                anonymousClass1 = new AnonymousClass1(list, this.this$0, str, null);
                this.L$0 = null;
                this.label = 4;
                if (kotlinx.coroutines.i.g(a2VarC, anonymousClass1, this) == objF) {
                    return objF;
                }
            } else {
                String strP = this.this$0.f55729b.p();
                if (strP != null) {
                    ui.c cVarJ = this.this$0.j();
                    this.label = 2;
                    obj = cVarJ.d(strP, this);
                    if (obj == objF) {
                        return objF;
                    }
                    downloadBean = (DownloadBean) obj;
                    if (downloadBean != null) {
                        subtitleSelectId2 = downloadBean.getSubtitleSelectId();
                    } else {
                        subtitleSelectId2 = null;
                    }
                    if (subtitleSelectId2 != null) {
                        subtitleSelectId = "";
                        str = subtitleSelectId;
                    }
                }
                com.transsion.subtitle.h hVarB2 = com.transsion.subtitle.h.f52857a.b();
                String strT3 = this.this$0.f55729b.t();
                this.L$0 = str;
                this.label = 3;
                obj = hVarB2.a(strT3, this);
                if (obj == objF) {
                    return objF;
                }
                list = (List) obj;
                wf.a.C0922a c0922a2 = wf.a.f74274a;
                String str3 = this.this$0.f55730c;
                String strT4 = this.this$0.f55729b.t();
                if (list != null) {
                    numD = Boxing.d(list.size());
                } else {
                    numD = null;
                }
                c0922a2.c(str3, "float subtitle----loadFromDB id:" + strT4 + ", size:" + numD, true);
                a2VarC = y0.c();
                anonymousClass1 = new AnonymousClass1(list, this.this$0, str, null);
                this.L$0 = null;
                this.label = 4;
                if (kotlinx.coroutines.i.g(a2VarC, anonymousClass1, this) == objF) {
                    return objF;
                }
            }
            str = null;
            com.transsion.subtitle.h hVarB3 = com.transsion.subtitle.h.f52857a.b();
            String strT5 = this.this$0.f55729b.t();
            this.L$0 = str;
            this.label = 3;
            obj = hVarB3.a(strT5, this);
            if (obj == objF) {
                return objF;
            }
            list = (List) obj;
            wf.a.C0922a c0922a3 = wf.a.f74274a;
            String str4 = this.this$0.f55730c;
            String strT6 = this.this$0.f55729b.t();
            if (list != null) {
                numD = Boxing.d(list.size());
            } else {
                numD = null;
            }
            c0922a3.c(str4, "float subtitle----loadFromDB id:" + strT6 + ", size:" + numD, true);
            a2VarC = y0.c();
            anonymousClass1 = new AnonymousClass1(list, this.this$0, str, null);
            this.L$0 = null;
            this.label = 4;
            if (kotlinx.coroutines.i.g(a2VarC, anonymousClass1, this) == objF) {
                return objF;
            }
        } else if (i10 == 1) {
            ResultKt.b(obj);
            videoDetailPlayBean = (VideoDetailPlayBean) obj;
            if (videoDetailPlayBean != null) {
                subtitleSelectId = videoDetailPlayBean.getSubtitleSelectId();
                str = subtitleSelectId;
            } else {
                str = null;
            }
            com.transsion.subtitle.h hVarB4 = com.transsion.subtitle.h.f52857a.b();
            String strT7 = this.this$0.f55729b.t();
            this.L$0 = str;
            this.label = 3;
            obj = hVarB4.a(strT7, this);
            if (obj == objF) {
                return objF;
            }
            list = (List) obj;
            wf.a.C0922a c0922a4 = wf.a.f74274a;
            String str5 = this.this$0.f55730c;
            String strT8 = this.this$0.f55729b.t();
            if (list != null) {
                numD = Boxing.d(list.size());
            } else {
                numD = null;
            }
            c0922a4.c(str5, "float subtitle----loadFromDB id:" + strT8 + ", size:" + numD, true);
            a2VarC = y0.c();
            anonymousClass1 = new AnonymousClass1(list, this.this$0, str, null);
            this.L$0 = null;
            this.label = 4;
            if (kotlinx.coroutines.i.g(a2VarC, anonymousClass1, this) == objF) {
                return objF;
            }
        } else if (i10 == 2) {
            ResultKt.b(obj);
            downloadBean = (DownloadBean) obj;
            if (downloadBean != null) {
                subtitleSelectId2 = downloadBean.getSubtitleSelectId();
            } else {
                subtitleSelectId2 = null;
            }
            if (subtitleSelectId2 != null) {
                subtitleSelectId = "";
                str = subtitleSelectId;
            } else {
                str = null;
            }
            com.transsion.subtitle.h hVarB5 = com.transsion.subtitle.h.f52857a.b();
            String strT9 = this.this$0.f55729b.t();
            this.L$0 = str;
            this.label = 3;
            obj = hVarB5.a(strT9, this);
            if (obj == objF) {
                return objF;
            }
            list = (List) obj;
            wf.a.C0922a c0922a5 = wf.a.f74274a;
            String str6 = this.this$0.f55730c;
            String strT10 = this.this$0.f55729b.t();
            if (list != null) {
                numD = Boxing.d(list.size());
            } else {
                numD = null;
            }
            c0922a5.c(str6, "float subtitle----loadFromDB id:" + strT10 + ", size:" + numD, true);
            a2VarC = y0.c();
            anonymousClass1 = new AnonymousClass1(list, this.this$0, str, null);
            this.L$0 = null;
            this.label = 4;
            if (kotlinx.coroutines.i.g(a2VarC, anonymousClass1, this) == objF) {
                return objF;
            }
        } else if (i10 == 3) {
            str = (String) this.L$0;
            ResultKt.b(obj);
            list = (List) obj;
            wf.a.C0922a c0922a6 = wf.a.f74274a;
            String str7 = this.this$0.f55730c;
            String strT11 = this.this$0.f55729b.t();
            if (list != null) {
                numD = Boxing.d(list.size());
            } else {
                numD = null;
            }
            c0922a6.c(str7, "float subtitle----loadFromDB id:" + strT11 + ", size:" + numD, true);
            a2VarC = y0.c();
            anonymousClass1 = new AnonymousClass1(list, this.this$0, str, null);
            this.L$0 = null;
            this.label = 4;
            if (kotlinx.coroutines.i.g(a2VarC, anonymousClass1, this) == objF) {
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

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((VideoFloatSubtitleControl$initSubtitle$2) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
