package androidx.work;

import android.content.Context;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.n0;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;
import kotlinx.coroutines.z;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0013\u0010\n\u001a\b\u0012\u0004\u0012\u00020\t0\b¢\u0006\u0004\b\n\u0010\u000bJ\u0013\u0010\f\u001a\u00020\tH¦@ø\u0001\u0000¢\u0006\u0004\b\f\u0010\rJ\u0013\u0010\u000f\u001a\u00020\u000eH\u0096@ø\u0001\u0000¢\u0006\u0004\b\u000f\u0010\rJ\u0013\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000e0\b¢\u0006\u0004\b\u0010\u0010\u000bJ\r\u0010\u0012\u001a\u00020\u0011¢\u0006\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0019\u001a\u00020\u00148\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R \u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\t0\u001a8\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001eR \u0010&\u001a\u00020 8\u0016X\u0097\u0004¢\u0006\u0012\n\u0004\b!\u0010\"\u0012\u0004\b%\u0010\u0013\u001a\u0004\b#\u0010$\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006'"}, d2 = {"Landroidx/work/CoroutineWorker;", "Landroidx/work/i;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "Lcom/google/common/util/concurrent/r;", "Landroidx/work/i$a;", "n", "()Lcom/google/common/util/concurrent/r;", CampaignEx.JSON_KEY_AD_R, "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/work/e;", "t", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "", "l", "()V", "Lkotlinx/coroutines/z;", "e", "Lkotlinx/coroutines/z;", "getJob$work_runtime_ktx_release", "()Lkotlinx/coroutines/z;", "job", "Landroidx/work/impl/utils/futures/a;", "f", "Landroidx/work/impl/utils/futures/a;", "v", "()Landroidx/work/impl/utils/futures/a;", "future", "Lkotlinx/coroutines/i0;", "g", "Lkotlinx/coroutines/i0;", "s", "()Lkotlinx/coroutines/i0;", "getCoroutineContext$annotations", "coroutineContext", "work-runtime-ktx_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public abstract class CoroutineWorker extends i {

    private final z job;

    private final androidx.work.impl.utils.futures.a future;

    private final i0 coroutineContext;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineWorker(Context appContext, WorkerParameters params) {
        super(appContext, params);
        Intrinsics.h(appContext, "appContext");
        Intrinsics.h(params, "params");
        this.job = JobKt__JobKt.b(null, 1, null);
        androidx.work.impl.utils.futures.a aVarX = androidx.work.impl.utils.futures.a.x();
        Intrinsics.g(aVarX, "create()");
        this.future = aVarX;
        aVarX.addListener(new Runnable() {
            @Override
            public final void run() {
                CoroutineWorker.q(this.f15127a);
            }
        }, h().b());
        this.coroutineContext = y0.a();
    }

    public static final void q(CoroutineWorker this$0) {
        Intrinsics.h(this$0, "this$0");
        if (this$0.future.isCancelled()) {
            t1.a.b(this$0.job, null, 1, null);
        }
    }

    static Object u(CoroutineWorker coroutineWorker, Continuation continuation) {
        throw new IllegalStateException("Not implemented");
    }

    @Override
    public final com.google.common.util.concurrent.r d() {
        z zVarB = JobKt__JobKt.b(null, 1, null);
        n0 n0VarA = o0.a(getCoroutineContext().plus(zVarB));
        JobListenableFuture jobListenableFuture = new JobListenableFuture(zVarB, null, 2, null);
        kotlinx.coroutines.k.d(n0VarA, null, null, new CoroutineWorker$getForegroundInfoAsync$1(jobListenableFuture, this, null), 3, null);
        return jobListenableFuture;
    }

    @Override
    public final void l() {
        super.l();
        this.future.cancel(false);
    }

    @Override
    public final com.google.common.util.concurrent.r n() {
        kotlinx.coroutines.k.d(o0.a(getCoroutineContext().plus(this.job)), null, null, new CoroutineWorker$startWork$1(this, null), 3, null);
        return this.future;
    }

    public abstract Object r(Continuation continuation);

    public i0 getCoroutineContext() {
        return this.coroutineContext;
    }

    public Object t(Continuation continuation) {
        return u(this, continuation);
    }

    public final androidx.work.impl.utils.futures.a getFuture() {
        return this.future;
    }
}
