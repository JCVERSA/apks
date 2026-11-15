package com.transsion.postdetail.ui.fragment;

import com.transsion.baselib.db.download.DownloadBean;
import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.LocalVideoEvent;
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
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.postdetail.ui.fragment.LocalVideoDetailFragment$save$1", f = "LocalVideoDetailFragment.kt", l = {1545, 1546}, m = "invokeSuspend")
@SourceDebugExtension
final class LocalVideoDetailFragment$save$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final boolean $completed;
    final DownloadBean $cvideoBean;
    final long $playProgress;
    long J$0;
    int label;
    final LocalVideoDetailFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LocalVideoDetailFragment$save$1(boolean z10, LocalVideoDetailFragment localVideoDetailFragment, long j10, DownloadBean downloadBean, Continuation<? super LocalVideoDetailFragment$save$1> continuation) {
        super(2, continuation);
        this.$completed = z10;
        this.this$0 = localVideoDetailFragment;
        this.$playProgress = j10;
        this.$cvideoBean = downloadBean;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LocalVideoDetailFragment$save$1(this.$completed, this.this$0, this.$playProgress, this.$cvideoBean, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:54:0x0148  */
    /* JADX WARN: Code duplicated, block: B:58:0x0151  */
    /* JADX WARN: Code duplicated, block: B:61:0x018a  */
    @Override
    public final Object invokeSuspend(Object obj) {
        long j10;
        long j11;
        DownloadBean downloadBean;
        long j12;
        DownloadBean downloadBean2;
        String resourceId;
        DownloadBean downloadBean3;
        boolean z10;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                j10 = this.J$0;
                ResultKt.b(obj);
            } else {
                if (i10 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                j12 = this.J$0;
                ResultKt.b(obj);
            }
            j11 = j12;
            downloadBean2 = this.$cvideoBean;
            if (downloadBean2 != null || (resourceId = downloadBean2.getResourceId()) == null) {
                resourceId = "";
            }
            LocalVideoEvent localVideoEvent = new LocalVideoEvent(resourceId, j11, this.this$0.duration, this.this$0.isSeries, false, 16, null);
            AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
            FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
            String name = LocalVideoEvent.class.getName();
            Intrinsics.g(name, "getName(...)");
            flowEventBus.postEvent(name, localVideoEvent, 0L);
            downloadBean3 = this.$cvideoBean;
            z10 = false;
            if (downloadBean3 != null && downloadBean3.isOutside()) {
                z10 = true;
            }
            yw.e eVar = new yw.e(true, z10);
            FlowEventBus flowEventBus2 = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
            String name2 = yw.e.class.getName();
            Intrinsics.g(name2, "getName(...)");
            flowEventBus2.postEvent(name2, eVar, 0L);
            return Unit.f64096a;
        }
        ResultKt.b(obj);
        j10 = (!this.$completed || this.this$0.duration <= 0) ? this.$playProgress : this.this$0.duration;
        wf.a.C0922a c0922a = wf.a.f74274a;
        String str = this.this$0.TAG;
        boolean z11 = this.$completed;
        long j13 = this.this$0.duration;
        long j14 = this.$playProgress;
        DownloadBean downloadBean4 = this.$cvideoBean;
        c0922a.u(str, "save completed = " + z11 + ", duration = " + j13 + ", playProgress= " + j14 + ", cur epse = " + (downloadBean4 != null ? Boxing.d(downloadBean4.getEpse()) : null) + " ", true);
        DownloadBean downloadBean5 = this.$cvideoBean;
        if (downloadBean5 != null) {
            downloadBean5.setReadProgress(j10);
        }
        if (this.this$0.duration > 0 && (downloadBean = this.$cvideoBean) != null) {
            downloadBean.setDuration(Boxing.e(this.this$0.duration));
        }
        if (this.this$0.videoHeight > 0 && this.this$0.videoWidth > 0) {
            DownloadBean downloadBean6 = this.$cvideoBean;
            if (downloadBean6 != null) {
                downloadBean6.setVideoWidth(this.this$0.videoWidth);
            }
            DownloadBean downloadBean7 = this.$cvideoBean;
            if (downloadBean7 != null) {
                downloadBean7.setVideoHeight(this.this$0.videoHeight);
            }
        }
        DownloadBean downloadBean8 = this.$cvideoBean;
        if (downloadBean8 != null) {
            downloadBean8.setLastPlayTimeStamp(System.currentTimeMillis());
        }
        if (this.$cvideoBean != null) {
            wf.a.C0922a.f(c0922a, this.this$0.TAG, "---------update name = " + this.$cvideoBean.getName() + " , playProgress = " + j10, false, 4, null);
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
            DownloadBean downloadBean9 = this.$cvideoBean;
            this.J$0 = j10;
            this.label = 1;
            if (downloadEsHelperA.b0(downloadBean9, this) == objF) {
                return objF;
            }
        } else {
            j11 = j10;
        }
        downloadBean2 = this.$cvideoBean;
        if (downloadBean2 != null) {
            resourceId = "";
        } else {
            resourceId = "";
        }
        LocalVideoEvent localVideoEvent2 = new LocalVideoEvent(resourceId, j11, this.this$0.duration, this.this$0.isSeries, false, 16, null);
        AppScopeVMlProvider appScopeVMlProvider2 = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus3 = (FlowEventBus) appScopeVMlProvider2.getApplicationScopeViewModel(FlowEventBus.class);
        String name3 = LocalVideoEvent.class.getName();
        Intrinsics.g(name3, "getName(...)");
        flowEventBus3.postEvent(name3, localVideoEvent2, 0L);
        downloadBean3 = this.$cvideoBean;
        z10 = false;
        if (downloadBean3 != null) {
            z10 = true;
        }
        yw.e eVar2 = new yw.e(true, z10);
        FlowEventBus flowEventBus4 = (FlowEventBus) appScopeVMlProvider2.getApplicationScopeViewModel(FlowEventBus.class);
        String name4 = yw.e.class.getName();
        Intrinsics.g(name4, "getName(...)");
        flowEventBus4.postEvent(name4, eVar2, 0L);
        return Unit.f64096a;
        LocalVideoDetailFragment localVideoDetailFragment = this.this$0;
        DownloadBean downloadBean10 = this.$cvideoBean;
        this.J$0 = j10;
        this.label = 2;
        if (localVideoDetailFragment.t3(downloadBean10, this) == objF) {
            return objF;
        }
        j12 = j10;
        j11 = j12;
        downloadBean2 = this.$cvideoBean;
        if (downloadBean2 != null) {
            resourceId = "";
        } else {
            resourceId = "";
        }
        LocalVideoEvent localVideoEvent3 = new LocalVideoEvent(resourceId, j11, this.this$0.duration, this.this$0.isSeries, false, 16, null);
        AppScopeVMlProvider appScopeVMlProvider3 = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus5 = (FlowEventBus) appScopeVMlProvider3.getApplicationScopeViewModel(FlowEventBus.class);
        String name5 = LocalVideoEvent.class.getName();
        Intrinsics.g(name5, "getName(...)");
        flowEventBus5.postEvent(name5, localVideoEvent3, 0L);
        downloadBean3 = this.$cvideoBean;
        z10 = false;
        if (downloadBean3 != null) {
            z10 = true;
        }
        yw.e eVar3 = new yw.e(true, z10);
        FlowEventBus flowEventBus6 = (FlowEventBus) appScopeVMlProvider3.getApplicationScopeViewModel(FlowEventBus.class);
        String name6 = yw.e.class.getName();
        Intrinsics.g(name6, "getName(...)");
        flowEventBus6.postEvent(name6, eVar3, 0L);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((LocalVideoDetailFragment$save$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
