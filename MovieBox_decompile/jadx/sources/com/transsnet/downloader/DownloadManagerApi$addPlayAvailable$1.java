package com.transsnet.downloader;

import com.transsnet.downloader.manager.DownloadEsHelper;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import com.transsnet.flow.event.sync.event.AddToDownloadEvent;
import java.util.List;
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
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.DownloadManagerApi$addPlayAvailable$1", f = "DownloadManagerApi.kt", l = {816}, m = "invokeSuspend")
@SourceDebugExtension
final class DownloadManagerApi$addPlayAvailable$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final boolean $needNotify;
    final String $resourceId;
    final String $subjectId;
    final int $totalEpisode;
    int I$0;
    Object L$0;
    Object L$1;
    Object L$2;
    boolean Z$0;
    int label;
    final DownloadManagerApi this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadManagerApi$addPlayAvailable$1(String str, int i10, DownloadManagerApi downloadManagerApi, boolean z10, String str2, Continuation<? super DownloadManagerApi$addPlayAvailable$1> continuation) {
        super(2, continuation);
        this.$subjectId = str;
        this.$totalEpisode = i10;
        this.this$0 = downloadManagerApi;
        this.$needNotify = z10;
        this.$resourceId = str2;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadManagerApi$addPlayAvailable$1(this.$subjectId, this.$totalEpisode, this.this$0, this.$needNotify, this.$resourceId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        String str;
        int i10;
        DownloadManagerApi downloadManagerApi;
        String str2;
        boolean z10;
        Object objF = IntrinsicsKt.f();
        int i11 = this.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            str = this.$subjectId;
            if (str == null) {
                return null;
            }
            i10 = this.$totalEpisode;
            downloadManagerApi = this.this$0;
            boolean z11 = this.$needNotify;
            str2 = this.$resourceId;
            DownloadEsHelper downloadEsHelperA = DownloadEsHelper.f57201m.a();
            this.L$0 = downloadManagerApi;
            this.L$1 = str;
            this.L$2 = str2;
            this.I$0 = i10;
            this.Z$0 = z11;
            this.label = 1;
            Object objO = downloadEsHelperA.o(str, this);
            if (objO == objF) {
                return objF;
            }
            z10 = z11;
            obj = objO;
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            z10 = this.Z$0;
            i10 = this.I$0;
            str2 = (String) this.L$2;
            str = (String) this.L$1;
            downloadManagerApi = (DownloadManagerApi) this.L$0;
            ResultKt.b(obj);
        }
        List list = (List) obj;
        if (i10 <= (list != null ? list.size() : -1)) {
            downloadManagerApi.f56190b.add(str);
            if (z10) {
                AddToDownloadEvent addToDownloadEvent = new AddToDownloadEvent(str, str2, true, true);
                FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
                String name = AddToDownloadEvent.class.getName();
                Intrinsics.g(name, "getName(...)");
                flowEventBus.postEvent(name, addToDownloadEvent, 0L);
            }
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadManagerApi$addPlayAvailable$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
