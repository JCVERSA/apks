package androidx.work.impl.workers;

import android.content.Context;
import androidx.work.WorkerParameters;
import androidx.work.i;
import androidx.work.impl.d0;
import androidx.work.impl.utils.futures.a;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import androidx.work.j;
import com.google.common.util.concurrent.r;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import g4.c;
import g4.e;
import i4.n;
import j4.u;
import j4.v;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0015\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\tH\u0016¢\u0006\u0004\b\u0010\u0010\u000bJ\u001d\u0010\u0014\u001a\u00020\t2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u001d\u0010\u0016\u001a\u00020\t2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00120\u0011H\u0016¢\u0006\u0004\b\u0016\u0010\u0015R\u0014\u0010\u0006\u001a\u00020\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0014\u0010\u001b\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u001aR\u0016\u0010\u001f\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR8\u0010$\u001a&\u0012\f\u0012\n !*\u0004\u0018\u00010\r0\r !*\u0012\u0012\f\u0012\n !*\u0004\u0018\u00010\r0\r\u0018\u00010 0 8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R(\u0010*\u001a\u0004\u0018\u00010\u00012\b\u0010%\u001a\u0004\u0018\u00010\u00018G@BX\u0086\u000e¢\u0006\f\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)¨\u0006+"}, d2 = {"Landroidx/work/impl/workers/ConstraintTrackingWorker;", "Landroidx/work/i;", "Lg4/c;", "Landroid/content/Context;", "appContext", "Landroidx/work/WorkerParameters;", "workerParameters", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "", CampaignEx.JSON_KEY_AD_R, "()V", "Lcom/google/common/util/concurrent/r;", "Landroidx/work/i$a;", "n", "()Lcom/google/common/util/concurrent/r;", "l", "", "Lj4/u;", "workSpecs", "f", "(Ljava/util/List;)V", "a", "e", "Landroidx/work/WorkerParameters;", "", "Ljava/lang/Object;", "lock", "", "g", "Z", "areConstraintsUnmet", "Landroidx/work/impl/utils/futures/a;", "kotlin.jvm.PlatformType", "h", "Landroidx/work/impl/utils/futures/a;", "future", "<set-?>", "i", "Landroidx/work/i;", "getDelegate", "()Landroidx/work/i;", "delegate", "work-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ConstraintTrackingWorker extends i implements c {

    private final WorkerParameters workerParameters;

    private final Object lock;

    private volatile boolean areConstraintsUnmet;

    private final a future;

    private i delegate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstraintTrackingWorker(Context appContext, WorkerParameters workerParameters) {
        super(appContext, workerParameters);
        Intrinsics.h(appContext, "appContext");
        Intrinsics.h(workerParameters, "workerParameters");
        this.workerParameters = workerParameters;
        this.lock = new Object();
        this.future = a.x();
    }

    private final void r() {
        if (this.future.isCancelled()) {
            return;
        }
        String strI = g().i("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME");
        j jVarE = j.e();
        Intrinsics.g(jVarE, "get()");
        if (strI == null || strI.length() == 0) {
            jVarE.c(l4.c.f65635a, "No worker to delegate to.");
            a future = this.future;
            Intrinsics.g(future, "future");
            l4.c.d(future);
            return;
        }
        i iVarB = i().b(b(), strI, this.workerParameters);
        this.delegate = iVarB;
        if (iVarB == null) {
            jVarE.a(l4.c.f65635a, "No worker to delegate to.");
            a future2 = this.future;
            Intrinsics.g(future2, "future");
            l4.c.d(future2);
            return;
        }
        d0 d0VarO = d0.o(b());
        Intrinsics.g(d0VarO, "getInstance(applicationContext)");
        v vVarN0 = d0VarO.t().n0();
        String string = e().toString();
        Intrinsics.g(string, "id.toString()");
        u uVarJ = vVarN0.j(string);
        if (uVarJ == null) {
            a future3 = this.future;
            Intrinsics.g(future3, "future");
            l4.c.d(future3);
            return;
        }
        n nVarS = d0VarO.s();
        Intrinsics.g(nVarS, "workManagerImpl.trackers");
        e eVar = new e(nVarS, this);
        eVar.a(CollectionsKt.e(uVarJ));
        String string2 = e().toString();
        Intrinsics.g(string2, "id.toString()");
        if (!eVar.d(string2)) {
            jVarE.a(l4.c.f65635a, "Constraints not met for delegate " + strI + ". Requesting retry.");
            a future4 = this.future;
            Intrinsics.g(future4, "future");
            l4.c.e(future4);
            return;
        }
        jVarE.a(l4.c.f65635a, "Constraints met for delegate " + strI);
        try {
            i iVar = this.delegate;
            Intrinsics.e(iVar);
            final r rVarN = iVar.n();
            Intrinsics.g(rVarN, "delegate!!.startWork()");
            rVarN.addListener(new Runnable() {
                @Override
                public final void run() {
                    ConstraintTrackingWorker.s(this.f65633a, rVarN);
                }
            }, c());
        } catch (Throwable th2) {
            jVarE.b(l4.c.f65635a, "Delegated worker " + strI + " threw exception in startWork.", th2);
            synchronized (this.lock) {
                try {
                    if (!this.areConstraintsUnmet) {
                        a future5 = this.future;
                        Intrinsics.g(future5, "future");
                        l4.c.d(future5);
                    } else {
                        jVarE.a(l4.c.f65635a, "Constraints were unmet, Retrying.");
                        a future6 = this.future;
                        Intrinsics.g(future6, "future");
                        l4.c.e(future6);
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    public static final void s(ConstraintTrackingWorker this$0, r innerFuture) {
        Intrinsics.h(this$0, "this$0");
        Intrinsics.h(innerFuture, "$innerFuture");
        synchronized (this$0.lock) {
            try {
                if (this$0.areConstraintsUnmet) {
                    a future = this$0.future;
                    Intrinsics.g(future, "future");
                    l4.c.e(future);
                } else {
                    this$0.future.v(innerFuture);
                }
                Unit unit = Unit.f64096a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static final void t(ConstraintTrackingWorker this$0) {
        Intrinsics.h(this$0, "this$0");
        this$0.r();
    }

    @Override
    public void a(List workSpecs) {
        Intrinsics.h(workSpecs, "workSpecs");
        j.e().a(l4.c.f65635a, "Constraints changed for " + workSpecs);
        synchronized (this.lock) {
            this.areConstraintsUnmet = true;
            Unit unit = Unit.f64096a;
        }
    }

    @Override
    public void f(List workSpecs) {
        Intrinsics.h(workSpecs, "workSpecs");
    }

    @Override
    public void l() {
        super.l();
        i iVar = this.delegate;
        if (iVar == null || iVar.j()) {
            return;
        }
        iVar.o();
    }

    @Override
    public r n() {
        c().execute(new Runnable() {
            @Override
            public final void run() {
                ConstraintTrackingWorker.t(this.f65632a);
            }
        });
        a future = this.future;
        Intrinsics.g(future, "future");
        return future;
    }
}
