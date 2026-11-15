package com.transsnet.downloader.manager;

import com.transsnet.downloader.callback.DownloadTaskStat;
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
@DebugMetadata(c = "com.transsnet.downloader.manager.DownloadStatusIconManager$onChange$1", f = "DownloadStatusIconManager.kt", l = {}, m = "invokeSuspend")
final class DownloadStatusIconManager$onChange$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final DownloadTaskStat $downloadTaskStat;
    int label;
    final DownloadStatusIconManager this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadStatusIconManager$onChange$1(DownloadStatusIconManager downloadStatusIconManager, DownloadTaskStat downloadTaskStat, Continuation<? super DownloadStatusIconManager$onChange$1> continuation) {
        super(2, continuation);
        this.this$0 = downloadStatusIconManager;
        this.$downloadTaskStat = downloadTaskStat;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadStatusIconManager$onChange$1(this.this$0, this.$downloadTaskStat, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        this.this$0.f57250e = this.$downloadTaskStat.getLoadingCount();
        this.this$0.f57248c = this.$downloadTaskStat.getErrorCount();
        this.this$0.f57249d = this.$downloadTaskStat.getDoneCount();
        this.this$0.f57251f = this.$downloadTaskStat.getWaitCount();
        if (this.this$0.f57252g) {
            this.this$0.f57249d = 0;
        }
        int i10 = this.this$0.f57250e + this.this$0.f57251f;
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "DownloadStatus", "on download change, errorCount = " + this.this$0.f57248c + ", doneCount = " + this.this$0.f57249d + ", loadingCount = " + this.this$0.f57250e + ",  waitCount = " + this.$downloadTaskStat.getWaitCount(), false, 4, null);
        if (!yg.l.f76264a.e()) {
            if (this.this$0.f57251f <= 0 || this.this$0.f57248c != 0) {
                DownloadStatusIconManager downloadStatusIconManager = this.this$0;
                DownloadStatusIconManager.u(downloadStatusIconManager, (downloadStatusIconManager.f57248c == 0 && this.this$0.f57249d == 0 && this.this$0.f57250e == 0) ? 0 : 2, 0, 2, null);
            } else {
                this.this$0.t(4, i10);
            }
            wf.a.C0922a.f(c0922a, "DownloadStatus", "no net, show error~", false, 4, null);
            return Unit.f64096a;
        }
        if (this.this$0.f57248c > 0) {
            DownloadStatusIconManager downloadStatusIconManager2 = this.this$0;
            DownloadStatusIconManager.u(downloadStatusIconManager2, downloadStatusIconManager2.f57250e > 0 ? 3 : 2, 0, 2, null);
        } else if (i10 > 0) {
            DownloadStatusIconManager downloadStatusIconManager3 = this.this$0;
            downloadStatusIconManager3.t(downloadStatusIconManager3.f57250e > 0 ? 5 : 4, i10);
        } else if (this.this$0.f57249d > 0) {
            DownloadStatusIconManager.u(this.this$0, 1, 0, 2, null);
        } else if (this.this$0.f57248c == 0 && this.this$0.f57249d == 0 && this.this$0.f57250e == 0) {
            DownloadStatusIconManager.u(this.this$0, 0, 0, 2, null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadStatusIconManager$onChange$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
