package com.transsnet.downloader.adapter;

import android.content.Context;
import android.view.View;
import androidx.appcompat.app.AppCompatActivity;
import com.transsion.baselib.db.audio.AudioBean;
import com.transsion.baselib.db.download.DownloadBean;
import java.lang.ref.WeakReference;
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
@DebugMetadata(c = "com.transsnet.downloader.adapter.DownloadingHolder$openAudio$1", f = "DownloadingHolder.kt", l = {234, 234}, m = "invokeSuspend")
final class DownloadingHolder$openAudio$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final DownloadBean $item;
    Object L$0;
    int label;
    final DownloadingHolder this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadingHolder$openAudio$1(DownloadingHolder downloadingHolder, DownloadBean downloadBean, Continuation<? super DownloadingHolder$openAudio$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadingHolder;
        this.$item = downloadBean;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadingHolder$openAudio$1(this.this$0, this.$item, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:35:0x0097  */
    /* JADX WARN: Code duplicated, block: B:51:0x014f  */
    /* JADX WARN: Code duplicated, block: B:53:0x0157  */
    /* JADX WARN: Code duplicated, block: B:56:0x0162  */
    @Override
    public final Object invokeSuspend(Object obj) {
        AppCompatActivity appCompatActivity;
        Object objD;
        AudioBean audioBean;
        Object objC;
        AppCompatActivity appCompatActivity2;
        ep.a aVarY;
        ep.a aVarY2;
        ep.b bVarZ;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                appCompatActivity = (AppCompatActivity) this.L$0;
                ResultKt.b(obj);
                objD = obj;
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                appCompatActivity2 = (AppCompatActivity) this.L$0;
                ResultKt.b(obj);
                objC = obj;
            }
            audioBean = (AudioBean) objC;
            appCompatActivity = appCompatActivity2;
            if (audioBean == null) {
                String url = this.$item.getUrl();
                String cover = this.$item.getCover();
                Long size = this.$item.getSize();
                String url2 = this.$item.getUrl();
                String name = this.$item.getName();
                String subjectId = this.$item.getSubjectId();
                AudioBean audioBean2 = new AudioBean(url, cover, Boxing.e(0L), size, url2, name, null, null, null, null, null, null, null, this.$item.getPostId(), subjectId, null, 0, this.$item.getSubjectName(), this.$item.getSe(), this.$item.getEp(), 106432, null);
                audioBean2.setPostId(this.$item.getPostId());
                audioBean2.setResourceId(this.$item.getResourceId());
                audioBean2.setSubjectId(this.$item.getSubjectId());
                audioBean2.setGroupId(this.$item.getGroupId());
                audioBean = audioBean2;
            }
            aVarY = this.this$0.y();
            if (aVarY == null && aVarY.f()) {
                ep.a aVarY3 = this.this$0.y();
                if (aVarY3 != null ? aVarY3.b(audioBean) : false) {
                    ep.a aVarY4 = this.this$0.y();
                    if (aVarY4 != null) {
                        aVarY4.pause();
                    }
                } else {
                    ep.a aVarY5 = this.this$0.y();
                    if (aVarY5 != null) {
                        ep.a.C0724a.a(aVarY5, audioBean, false, 2, null);
                    }
                }
            } else {
                aVarY2 = this.this$0.y();
                if (aVarY2 != null) {
                    ep.a.C0724a.a(aVarY2, audioBean, false, 2, null);
                }
            }
            bVarZ = this.this$0.z();
            if (bVarZ != null) {
                bVarZ.a(new WeakReference(appCompatActivity), audioBean);
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        View view = this.this$0.com.mbridge.msdk.MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW java.lang.String;
        Context context = view != null ? view.getContext() : null;
        appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null) {
            return Unit.f64096a;
        }
        this.this$0.x().l(this.$item);
        si.a aVarW = this.this$0.w();
        String resourceId = this.$item.getResourceId();
        if (resourceId == null) {
            resourceId = this.$item.getUrl();
        }
        this.L$0 = appCompatActivity;
        this.label = 1;
        objD = aVarW.d(resourceId, this);
        if (objD == objF) {
            return objF;
        }
        audioBean = (AudioBean) objD;
        if (audioBean == null) {
            si.a aVarW2 = this.this$0.w();
            String url3 = this.$item.getUrl();
            this.L$0 = appCompatActivity;
            this.label = 2;
            objC = aVarW2.c(url3, this);
            if (objC == objF) {
                return objF;
            }
            appCompatActivity2 = appCompatActivity;
            audioBean = (AudioBean) objC;
            appCompatActivity = appCompatActivity2;
        }
        if (audioBean == null) {
            String url4 = this.$item.getUrl();
            String cover2 = this.$item.getCover();
            Long size2 = this.$item.getSize();
            String url5 = this.$item.getUrl();
            String name2 = this.$item.getName();
            String subjectId2 = this.$item.getSubjectId();
            AudioBean audioBean3 = new AudioBean(url4, cover2, Boxing.e(0L), size2, url5, name2, null, null, null, null, null, null, null, this.$item.getPostId(), subjectId2, null, 0, this.$item.getSubjectName(), this.$item.getSe(), this.$item.getEp(), 106432, null);
            audioBean3.setPostId(this.$item.getPostId());
            audioBean3.setResourceId(this.$item.getResourceId());
            audioBean3.setSubjectId(this.$item.getSubjectId());
            audioBean3.setGroupId(this.$item.getGroupId());
            audioBean = audioBean3;
        }
        aVarY = this.this$0.y();
        if (aVarY == null) {
            aVarY2 = this.this$0.y();
            if (aVarY2 != null) {
                ep.a.C0724a.a(aVarY2, audioBean, false, 2, null);
            }
        } else {
            aVarY2 = this.this$0.y();
            if (aVarY2 != null) {
                ep.a.C0724a.a(aVarY2, audioBean, false, 2, null);
            }
        }
        bVarZ = this.this$0.z();
        if (bVarZ != null) {
            bVarZ.a(new WeakReference(appCompatActivity), audioBean);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadingHolder$openAudio$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
