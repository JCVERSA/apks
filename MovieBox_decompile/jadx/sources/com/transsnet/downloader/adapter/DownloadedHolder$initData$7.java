package com.transsnet.downloader.adapter;

import android.text.TextUtils;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baselib.db.download.DownloadBean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.adapter.DownloadedHolder$initData$7", f = "DownloadedHolder.kt", l = {279}, m = "invokeSuspend")
final class DownloadedHolder$initData$7 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final p6.a $item;
    final int $position;
    int label;
    final DownloadedHolder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadedHolder$initData$7(p6.a aVar, DownloadedHolder downloadedHolder, int i10, Continuation<? super DownloadedHolder$initData$7> continuation) {
        super(2, continuation);
        this.$item = aVar;
        this.this$0 = downloadedHolder;
        this.$position = i10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadedHolder$initData$7(this.$item, this.this$0, this.$position, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0043  */
    /* JADX WARN: Code duplicated, block: B:28:0x0136  */
    @Override
    public final Object invokeSuspend(Object obj) {
        AudioBean audioBean;
        Object objC;
        ep.a aVarB;
        ep.a aVarB2;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            String url = ((DownloadBean) this.$item).getUrl();
            if (!TextUtils.isEmpty(url)) {
                si.a aVarA = this.this$0.A();
                if (aVarA != null) {
                    this.label = 1;
                    objC = aVarA.c(url, this);
                    if (objC == objF) {
                        return objF;
                    }
                } else {
                    audioBean = null;
                }
                if (audioBean == null) {
                    audioBean = new AudioBean(((DownloadBean) this.$item).getUrl(), ((DownloadBean) this.$item).getCover(), Boxing.e(0L), ((DownloadBean) this.$item).getSize(), ((DownloadBean) this.$item).getPath(), ((DownloadBean) this.$item).getName(), null, null, null, null, null, null, null, null, null, null, 0, ((DownloadBean) this.$item).getSubjectName(), 0, 0, 917440, null);
                    audioBean.setPostId(((DownloadBean) this.$item).getPostId());
                    audioBean.setResourceId(((DownloadBean) this.$item).getResourceId());
                    audioBean.setSubjectId(((DownloadBean) this.$item).getSubjectId());
                    audioBean.setGroupId(((DownloadBean) this.$item).getGroupId());
                }
                wf.a.C0922a.f(wf.a.f74274a, "audioPlay", "registerAudioListener,adapterPosition = " + this.$position + ", name = " + ((DownloadBean) this.$item).getName() + ", audioStatus = " + ((DownloadBean) this.$item).getAudioStatus() + ", status = " + audioBean.getStatus(), false, 4, null);
                aVarB = this.this$0.B();
                if (aVarB == null && aVarB.b(audioBean) && (aVarB2 = this.this$0.B()) != null && aVarB2.f()) {
                    audioBean.setStatus(3);
                    ((DownloadBean) this.$item).setAudioStatus(3);
                } else {
                    audioBean.setStatus(4);
                    ((DownloadBean) this.$item).setAudioStatus(4);
                }
                this.this$0.T((DownloadBean) this.$item, audioBean);
                this.this$0.P(audioBean.getReadProcess(), audioBean.getDuration(), audioBean.getStatus(), 1);
            }
            return Unit.f64096a;
        }
        if (i10 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        objC = obj;
        audioBean = (AudioBean) objC;
        if (audioBean == null) {
            audioBean = new AudioBean(((DownloadBean) this.$item).getUrl(), ((DownloadBean) this.$item).getCover(), Boxing.e(0L), ((DownloadBean) this.$item).getSize(), ((DownloadBean) this.$item).getPath(), ((DownloadBean) this.$item).getName(), null, null, null, null, null, null, null, null, null, null, 0, ((DownloadBean) this.$item).getSubjectName(), 0, 0, 917440, null);
            audioBean.setPostId(((DownloadBean) this.$item).getPostId());
            audioBean.setResourceId(((DownloadBean) this.$item).getResourceId());
            audioBean.setSubjectId(((DownloadBean) this.$item).getSubjectId());
            audioBean.setGroupId(((DownloadBean) this.$item).getGroupId());
        }
        wf.a.C0922a.f(wf.a.f74274a, "audioPlay", "registerAudioListener,adapterPosition = " + this.$position + ", name = " + ((DownloadBean) this.$item).getName() + ", audioStatus = " + ((DownloadBean) this.$item).getAudioStatus() + ", status = " + audioBean.getStatus(), false, 4, null);
        aVarB = this.this$0.B();
        if (aVarB == null) {
            audioBean.setStatus(4);
            ((DownloadBean) this.$item).setAudioStatus(4);
        } else {
            audioBean.setStatus(4);
            ((DownloadBean) this.$item).setAudioStatus(4);
        }
        this.this$0.T((DownloadBean) this.$item, audioBean);
        this.this$0.P(audioBean.getReadProcess(), audioBean.getDuration(), audioBean.getStatus(), 1);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadedHolder$initData$7) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
