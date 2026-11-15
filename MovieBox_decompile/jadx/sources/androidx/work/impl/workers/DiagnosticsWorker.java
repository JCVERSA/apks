package androidx.work.impl.workers;

import android.content.Context;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import androidx.work.i;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.d0;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import j4.j;
import j4.o;
import j4.v;
import j4.z;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import l4.d;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Landroidx/work/impl/workers/DiagnosticsWorker;", "Landroidx/work/Worker;", "Landroid/content/Context;", "context", "Landroidx/work/WorkerParameters;", "parameters", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "Landroidx/work/i$a;", TtmlNode.TAG_P, "()Landroidx/work/i$a;", "work-runtime_release"}, k = 1, mv = {1, 7, 1}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class DiagnosticsWorker extends Worker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiagnosticsWorker(Context context, WorkerParameters parameters) {
        super(context, parameters);
        Intrinsics.h(context, "context");
        Intrinsics.h(parameters, "parameters");
    }

    @Override
    public i.a p() {
        d0 d0VarO = d0.o(b());
        Intrinsics.g(d0VarO, "getInstance(applicationContext)");
        WorkDatabase workDatabaseT = d0VarO.t();
        Intrinsics.g(workDatabaseT, "workManager.workDatabase");
        v vVarN0 = workDatabaseT.n0();
        o oVarL0 = workDatabaseT.l0();
        z zVarO0 = workDatabaseT.o0();
        j jVarK0 = workDatabaseT.k0();
        List listD = vVarN0.d(System.currentTimeMillis() - TimeUnit.DAYS.toMillis(1L));
        List listW = vVarN0.w();
        List listO = vVarN0.o(200);
        if (!listD.isEmpty()) {
            androidx.work.j.e().f(d.f65636a, "Recently completed work:\n\n");
            androidx.work.j.e().f(d.f65636a, d.d(oVarL0, zVarO0, jVarK0, listD));
        }
        if (!listW.isEmpty()) {
            androidx.work.j.e().f(d.f65636a, "Running work:\n\n");
            androidx.work.j.e().f(d.f65636a, d.d(oVarL0, zVarO0, jVarK0, listW));
        }
        if (!listO.isEmpty()) {
            androidx.work.j.e().f(d.f65636a, "Enqueued work:\n\n");
            androidx.work.j.e().f(d.f65636a, d.d(oVarL0, zVarO0, jVarK0, listO));
        }
        i.a aVarC = i.a.c();
        Intrinsics.g(aVarC, "success()");
        return aVarC;
    }
}
