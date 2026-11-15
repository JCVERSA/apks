package com.transsion.videodetail.music.ui;

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
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.videodetail.music.ui.MusicDetailFragment$saveDownloadHistory$1", f = "MusicDetailFragment.kt", l = {1821}, m = "invokeSuspend")
@SourceDebugExtension
final class MusicDetailFragment$saveDownloadHistory$1 extends SuspendLambda implements Function2<kotlinx.coroutines.n0, Continuation<? super Unit>, Object> {
    final long $progress;
    long J$0;
    Object L$0;
    Object L$1;
    int label;
    final MusicDetailFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    MusicDetailFragment$saveDownloadHistory$1(MusicDetailFragment musicDetailFragment, long j10, Continuation<? super MusicDetailFragment$saveDownloadHistory$1> continuation) {
        super(2, continuation);
        this.this$0 = musicDetailFragment;
        this.$progress = j10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new MusicDetailFragment$saveDownloadHistory$1(this.this$0, this.$progress, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        String resourceId;
        String str;
        long j10;
        MusicDetailFragment musicDetailFragment;
        Long duration;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        if (i10 == 0) {
            ResultKt.b(obj);
            DownloadBean downloadBean = this.this$0.downloadBean;
            if (downloadBean != null && (resourceId = downloadBean.getResourceId()) != null) {
                long j11 = this.$progress;
                MusicDetailFragment musicDetailFragment2 = this.this$0;
                DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
                this.L$0 = musicDetailFragment2;
                this.L$1 = resourceId;
                this.J$0 = j11;
                this.label = 1;
                if (downloadEsHelperA.e0(resourceId, j11, this) == objF) {
                    return objF;
                }
                str = resourceId;
                j10 = j11;
                musicDetailFragment = musicDetailFragment2;
            }
            return Unit.f64096a;
        }
        if (i10 != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        long j12 = this.J$0;
        String str2 = (String) this.L$1;
        musicDetailFragment = (MusicDetailFragment) this.L$0;
        ResultKt.b(obj);
        j10 = j12;
        str = str2;
        DownloadBean downloadBean2 = musicDetailFragment.downloadBean;
        LocalVideoEvent localVideoEvent = new LocalVideoEvent(str, j10, (downloadBean2 == null || (duration = downloadBean2.getDuration()) == null) ? 0L : duration.longValue(), false, false, 16, null);
        AppScopeVMlProvider appScopeVMlProvider = AppScopeVMlProvider.INSTANCE;
        FlowEventBus flowEventBus = (FlowEventBus) appScopeVMlProvider.getApplicationScopeViewModel(FlowEventBus.class);
        String name = LocalVideoEvent.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, localVideoEvent, 0L);
        DownloadBean downloadBean3 = musicDetailFragment.downloadBean;
        boolean z10 = false;
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

    @Override
    public final Object invoke(kotlinx.coroutines.n0 n0Var, Continuation<? super Unit> continuation) {
        return ((MusicDetailFragment$saveDownloadHistory$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
