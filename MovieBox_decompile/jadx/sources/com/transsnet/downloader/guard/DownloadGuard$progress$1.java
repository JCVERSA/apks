package com.transsnet.downloader.guard;

import android.app.Notification;
import androidx.core.app.NotificationCompat;
import androidx.core.app.t;
import com.blankj.utilcode.util.Utils;
import com.transsion.baselib.db.download.DownloadBean;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.n0;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsnet.downloader.guard.DownloadGuard$progress$1", f = "DownloadGuard.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension
final class DownloadGuard$progress$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final DownloadBean $downloadInfo;
    final int $nofId;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DownloadGuard$progress$1(DownloadBean downloadBean, int i10, Continuation<? super DownloadGuard$progress$1> continuation) {
        super(2, continuation);
        this.$downloadInfo = downloadBean;
        this.$nofId = i10;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new DownloadGuard$progress$1(this.$downloadInfo, this.$nofId, continuation);
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.f();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.b(obj);
        try {
            try {
                NotificationCompat.m mVarJ = DownloadGuard.f57166a.j(this.$downloadInfo);
                Notification notificationC = mVarJ != null ? mVarJ.c() : null;
                if (notificationC != null) {
                    t.b(Utils.a()).d(this.$nofId, notificationC);
                    Unit unit = Unit.f64096a;
                }
            } catch (Throwable unused) {
                Unit unit2 = Unit.f64096a;
            }
        } catch (Throwable th2) {
            wf.a.C0922a.f(wf.a.f74274a, "notify", "DownloadGuard {" + th2 + "}", false, 4, null);
        }
        return Unit.f64096a;
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((DownloadGuard$progress$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
