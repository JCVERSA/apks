package com.transsion.audio.fragment;

import com.therouter.TheRouter;
import com.transsion.audio.player.AudioPlayer;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.moviedetailapi.DownloadItem;
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
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.audio.fragment.SubjectListFragment$initView$1$3$onPlayItem$1", f = "SubjectListFragment.kt", l = {147}, m = "invokeSuspend")
@SourceDebugExtension
final class SubjectListFragment$initView$1$3$onPlayItem$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final DownloadItem $download;
    int label;
    final SubjectListFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SubjectListFragment$initView$1$3$onPlayItem$1(DownloadItem downloadItem, SubjectListFragment subjectListFragment, Continuation<? super SubjectListFragment$initView$1$3$onPlayItem$1> continuation) {
        super(2, continuation);
        this.$download = downloadItem;
        this.this$0 = subjectListFragment;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SubjectListFragment$initView$1$3$onPlayItem$1(this.$download, this.this$0, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0043  */
    /* JADX WARN: Code duplicated, block: B:20:0x004f  */
    /* JADX WARN: Code duplicated, block: B:22:0x0055  */
    /* JADX WARN: Code duplicated, block: B:24:0x0075  */
    /* JADX WARN: Code duplicated, block: B:25:0x007a  */
    /* JADX WARN: Code duplicated, block: B:27:0x0099  */
    /* JADX WARN: Code duplicated, block: B:28:0x009e  */
    /* JADX WARN: Code duplicated, block: B:30:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a9  */
    /* JADX WARN: Code duplicated, block: B:34:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:35:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:39:0x00bc  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c6  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ec  */
    /* JADX WARN: Code duplicated, block: B:47:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:49:0x00fb  */
    /* JADX WARN: Code duplicated, block: B:52:0x0170  */
    @Override
    public final Object invokeSuspend(Object obj) {
        AudioBean audioBean;
        si.a aVarV0;
        Object objC;
        String url;
        ep.a aVar;
        Long readProcess;
        long jLongValue;
        Long duration;
        long jLongValue2;
        ep.a aVar2;
        ep.a aVar3;
        ep.a aVar4;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            String url2 = this.$download.getUrl();
            audioBean = null;
            if (url2 != null && (aVarV0 = this.this$0.v0()) != null) {
                this.label = 1;
                objC = aVarV0.c(url2, this);
                if (objC == objF) {
                    return objF;
                }
            }
            if (audioBean != null) {
                url = this.$download.getUrl();
                if (url == null) {
                    url = "";
                }
                audioBean = new AudioBean(url, this.this$0.subjectCover, Boxing.e(0L), this.$download.getSize(), this.$download.getUrl(), this.$download.getName(), "", Boxing.d(0), null, null, null, "", this.$download.getResourceId(), this.$download.getPostId(), this.this$0.subjectId, this.this$0.groupId, 0, this.this$0.subjectTitle, this.$download.getSe(), this.$download.getEp(), 67328, null);
                this.$download.setStatus(Boxing.d(3));
                aVar = (ep.a) TheRouter.d(ep.a.class, new Object[0]);
                if (aVar != null) {
                    aVar.d(audioBean, false);
                }
            } else if (AudioPlayer.f41764i.a().y(audioBean)) {
                readProcess = audioBean.getReadProcess();
                if (readProcess != null) {
                    jLongValue = readProcess.longValue();
                } else {
                    jLongValue = 0;
                }
                duration = audioBean.getDuration();
                if (duration != null) {
                    jLongValue2 = duration.longValue();
                } else {
                    jLongValue2 = -500;
                }
                boolean z10 = jLongValue >= jLongValue2;
                if (audioBean.getStatus() != 6 || z10) {
                    audioBean.setReadProcess(Boxing.e(0L));
                }
                this.this$0.mIsStop.set(false);
                audioBean.setStatus(3);
                this.$download.setStatus(Boxing.d(3));
                aVar2 = (ep.a) TheRouter.d(ep.a.class, new Object[0]);
                if (aVar2 != null) {
                    aVar2.d(audioBean, false);
                }
            } else if (audioBean.getStatus() == 3) {
                this.this$0.mIsStop.set(true);
                audioBean.setStatus(4);
                this.$download.setStatus(Boxing.d(4));
                aVar4 = (ep.a) TheRouter.d(ep.a.class, new Object[0]);
                if (aVar4 != null) {
                    aVar4.stop();
                }
            } else {
                this.this$0.mIsStop.set(false);
                audioBean.setStatus(3);
                this.$download.setStatus(Boxing.d(3));
                aVar3 = (ep.a) TheRouter.d(ep.a.class, new Object[0]);
                if (aVar3 != null) {
                    aVar3.prepare();
                }
            }
            this.this$0.H0(this.$download, audioBean);
            return Unit.f64096a;
        }
        if (i10 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        objC = obj;
        audioBean = (AudioBean) objC;
        if (audioBean != null) {
            url = this.$download.getUrl();
            if (url == null) {
                url = "";
            }
            audioBean = new AudioBean(url, this.this$0.subjectCover, Boxing.e(0L), this.$download.getSize(), this.$download.getUrl(), this.$download.getName(), "", Boxing.d(0), null, null, null, "", this.$download.getResourceId(), this.$download.getPostId(), this.this$0.subjectId, this.this$0.groupId, 0, this.this$0.subjectTitle, this.$download.getSe(), this.$download.getEp(), 67328, null);
            this.$download.setStatus(Boxing.d(3));
            aVar = (ep.a) TheRouter.d(ep.a.class, new Object[0]);
            if (aVar != null) {
                aVar.d(audioBean, false);
            }
        } else if (AudioPlayer.f41764i.a().y(audioBean)) {
            readProcess = audioBean.getReadProcess();
            if (readProcess != null) {
                jLongValue = readProcess.longValue();
            } else {
                jLongValue = 0;
            }
            duration = audioBean.getDuration();
            if (duration != null) {
                jLongValue2 = duration.longValue();
            } else {
                jLongValue2 = -500;
            }
            if (jLongValue >= jLongValue2) {
            }
            if (audioBean.getStatus() != 6) {
                audioBean.setReadProcess(Boxing.e(0L));
            } else {
                audioBean.setReadProcess(Boxing.e(0L));
            }
            this.this$0.mIsStop.set(false);
            audioBean.setStatus(3);
            this.$download.setStatus(Boxing.d(3));
            aVar2 = (ep.a) TheRouter.d(ep.a.class, new Object[0]);
            if (aVar2 != null) {
                aVar2.d(audioBean, false);
            }
        } else if (audioBean.getStatus() == 3) {
            this.this$0.mIsStop.set(true);
            audioBean.setStatus(4);
            this.$download.setStatus(Boxing.d(4));
            aVar4 = (ep.a) TheRouter.d(ep.a.class, new Object[0]);
            if (aVar4 != null) {
                aVar4.stop();
            }
        } else {
            this.this$0.mIsStop.set(false);
            audioBean.setStatus(3);
            this.$download.setStatus(Boxing.d(3));
            aVar3 = (ep.a) TheRouter.d(ep.a.class, new Object[0]);
            if (aVar3 != null) {
                aVar3.prepare();
            }
        }
        this.this$0.H0(this.$download, audioBean);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((SubjectListFragment$initView$1$3$onPlayItem$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
