package com.transsnet.downloader;

import android.content.Context;
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
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.DownloadManagerApi$opnAudio$1", f = "DownloadManagerApi.kt", l = {945, 945}, m = "invokeSuspend")
final class DownloadManagerApi$opnAudio$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final Context $context;
    Object L$0;
    int label;
    final DownloadManagerApi this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadManagerApi$opnAudio$1(DownloadManagerApi downloadManagerApi, Context context, Continuation<? super DownloadManagerApi$opnAudio$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadManagerApi;
        this.$context = context;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadManagerApi$opnAudio$1(this.this$0, this.$context, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00b3  */
    /* JADX WARN: Code duplicated, block: B:38:0x0104  */
    /* JADX WARN: Code duplicated, block: B:39:0x010b  */
    /* JADX WARN: Code duplicated, block: B:42:0x0115  */
    /* JADX WARN: Code duplicated, block: B:43:0x011c  */
    /* JADX WARN: Code duplicated, block: B:47:0x0184  */
    /* JADX WARN: Code duplicated, block: B:50:0x0194  */
    @Override
    public final Object invokeSuspend(Object obj) {
        AppCompatActivity appCompatActivity;
        Object objD;
        AudioBean audioBean;
        Object objC;
        AppCompatActivity appCompatActivity2;
        ep.b bVarP0;
        ep.a aVarO0;
        DownloadBean downloadBean;
        int se2;
        DownloadBean downloadBean2;
        int ep2;
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
                DownloadBean downloadBean3 = this.this$0.f56193e;
                Intrinsics.e(downloadBean3);
                String url = downloadBean3.getUrl();
                DownloadBean downloadBean4 = this.this$0.f56193e;
                Intrinsics.e(downloadBean4);
                String cover = downloadBean4.getCover();
                Long lE = Boxing.e(0L);
                DownloadBean downloadBean5 = this.this$0.f56193e;
                Intrinsics.e(downloadBean5);
                Long size = downloadBean5.getSize();
                DownloadBean downloadBean6 = this.this$0.f56193e;
                Intrinsics.e(downloadBean6);
                String url2 = downloadBean6.getUrl();
                DownloadBean downloadBean7 = this.this$0.f56193e;
                Intrinsics.e(downloadBean7);
                String name = downloadBean7.getName();
                downloadBean = this.this$0.f56193e;
                if (downloadBean != null) {
                    se2 = downloadBean.getSe();
                } else {
                    se2 = 0;
                }
                downloadBean2 = this.this$0.f56193e;
                if (downloadBean2 != null) {
                    ep2 = downloadBean2.getEp();
                } else {
                    ep2 = 0;
                }
                audioBean = new AudioBean(url, cover, lE, size, url2, name, null, null, null, null, null, null, null, null, null, null, 0, null, se2, ep2, 262080, null);
                DownloadBean downloadBean8 = this.this$0.f56193e;
                Intrinsics.e(downloadBean8);
                audioBean.setPostId(downloadBean8.getPostId());
                DownloadBean downloadBean9 = this.this$0.f56193e;
                Intrinsics.e(downloadBean9);
                audioBean.setResourceId(downloadBean9.getResourceId());
                DownloadBean downloadBean10 = this.this$0.f56193e;
                Intrinsics.e(downloadBean10);
                audioBean.setSubjectId(downloadBean10.getSubjectId());
                DownloadBean downloadBean11 = this.this$0.f56193e;
                Intrinsics.e(downloadBean11);
                audioBean.setGroupId(downloadBean11.getGroupId());
            }
            bVarP0 = this.this$0.p0();
            if (bVarP0 != null) {
                bVarP0.a(new WeakReference(appCompatActivity), audioBean);
            }
            aVarO0 = this.this$0.o0();
            if (aVarO0 != null) {
                ep.a.C0724a.a(aVarO0, audioBean, false, 2, null);
            }
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        if (this.this$0.f56193e == null) {
            return Unit.f64096a;
        }
        Context context = this.$context;
        appCompatActivity = context instanceof AppCompatActivity ? (AppCompatActivity) context : null;
        if (appCompatActivity == null) {
            return Unit.f64096a;
        }
        com.transsnet.downloader.manager.g gVarN0 = this.this$0.n0();
        DownloadBean downloadBean12 = this.this$0.f56193e;
        Intrinsics.e(downloadBean12);
        gVarN0.l(downloadBean12);
        si.a aVarM0 = this.this$0.m0();
        DownloadBean downloadBean13 = this.this$0.f56193e;
        Intrinsics.e(downloadBean13);
        String resourceId = downloadBean13.getResourceId();
        if (resourceId == null) {
            DownloadBean downloadBean14 = this.this$0.f56193e;
            Intrinsics.e(downloadBean14);
            resourceId = downloadBean14.getUrl();
        }
        this.L$0 = appCompatActivity;
        this.label = 1;
        objD = aVarM0.d(resourceId, this);
        if (objD == objF) {
            return objF;
        }
        audioBean = (AudioBean) objD;
        if (audioBean == null) {
            si.a aVarM1 = this.this$0.m0();
            DownloadBean downloadBean15 = this.this$0.f56193e;
            Intrinsics.e(downloadBean15);
            String url3 = downloadBean15.getUrl();
            this.L$0 = appCompatActivity;
            this.label = 2;
            objC = aVarM1.c(url3, this);
            if (objC == objF) {
                return objF;
            }
            appCompatActivity2 = appCompatActivity;
            audioBean = (AudioBean) objC;
            appCompatActivity = appCompatActivity2;
        }
        if (audioBean == null) {
            DownloadBean downloadBean16 = this.this$0.f56193e;
            Intrinsics.e(downloadBean16);
            String url4 = downloadBean16.getUrl();
            DownloadBean downloadBean17 = this.this$0.f56193e;
            Intrinsics.e(downloadBean17);
            String cover2 = downloadBean17.getCover();
            Long lE2 = Boxing.e(0L);
            DownloadBean downloadBean18 = this.this$0.f56193e;
            Intrinsics.e(downloadBean18);
            Long size2 = downloadBean18.getSize();
            DownloadBean downloadBean19 = this.this$0.f56193e;
            Intrinsics.e(downloadBean19);
            String url5 = downloadBean19.getUrl();
            DownloadBean downloadBean20 = this.this$0.f56193e;
            Intrinsics.e(downloadBean20);
            String name2 = downloadBean20.getName();
            downloadBean = this.this$0.f56193e;
            if (downloadBean != null) {
                se2 = downloadBean.getSe();
            } else {
                se2 = 0;
            }
            downloadBean2 = this.this$0.f56193e;
            if (downloadBean2 != null) {
                ep2 = downloadBean2.getEp();
            } else {
                ep2 = 0;
            }
            audioBean = new AudioBean(url4, cover2, lE2, size2, url5, name2, null, null, null, null, null, null, null, null, null, null, 0, null, se2, ep2, 262080, null);
            DownloadBean downloadBean21 = this.this$0.f56193e;
            Intrinsics.e(downloadBean21);
            audioBean.setPostId(downloadBean21.getPostId());
            DownloadBean downloadBean22 = this.this$0.f56193e;
            Intrinsics.e(downloadBean22);
            audioBean.setResourceId(downloadBean22.getResourceId());
            DownloadBean downloadBean110 = this.this$0.f56193e;
            Intrinsics.e(downloadBean110);
            audioBean.setSubjectId(downloadBean110.getSubjectId());
            DownloadBean downloadBean111 = this.this$0.f56193e;
            Intrinsics.e(downloadBean111);
            audioBean.setGroupId(downloadBean111.getGroupId());
        }
        bVarP0 = this.this$0.p0();
        if (bVarP0 != null) {
            bVarP0.a(new WeakReference(appCompatActivity), audioBean);
        }
        aVarO0 = this.this$0.o0();
        if (aVarO0 != null) {
            ep.a.C0724a.a(aVarO0, audioBean, false, 2, null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadManagerApi$opnAudio$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
