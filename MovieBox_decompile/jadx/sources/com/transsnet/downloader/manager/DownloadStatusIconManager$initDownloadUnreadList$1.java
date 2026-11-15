package com.transsnet.downloader.manager;

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
@DebugMetadata(c = "com.transsnet.downloader.manager.DownloadStatusIconManager$initDownloadUnreadList$1", f = "DownloadStatusIconManager.kt", l = {}, m = "invokeSuspend")
final class DownloadStatusIconManager$initDownloadUnreadList$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    int label;
    final DownloadStatusIconManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadStatusIconManager$initDownloadUnreadList$1(DownloadStatusIconManager downloadStatusIconManager, Continuation<? super DownloadStatusIconManager$initDownloadUnreadList$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadStatusIconManager;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadStatusIconManager$initDownloadUnreadList$1(this.this$0, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        if (this.this$0.f57248c > 0 || this.this$0.f57250e > 0 || this.this$0.f57251f > 0) {
            return Unit.f64096a;
        }
        DownloadStatusIconManager downloadStatusIconManager = this.this$0;
        DownloadStatusIconManager.u(downloadStatusIconManager, !downloadStatusIconManager.f57252g ? 1 : 0, 0, 2, null);
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadStatusIconManager$initDownloadUnreadList$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
