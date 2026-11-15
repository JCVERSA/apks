package com.transsion.push.worker;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import androidx.work.i;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u000b2\u00020\u0001:\u0001\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0096@¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/transsion/push/worker/ReportWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "context", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "Landroidx/work/i$a;", CampaignEx.JSON_KEY_AD_R, "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "h", "a", "push_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ReportWorker extends CoroutineWorker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReportWorker(Context context, WorkerParameters params) {
        super(context, params);
        Intrinsics.h(context, "context");
        Intrinsics.h(params, "params");
    }

    @Override
    public Object r(Continuation continuation) {
        try {
            wf.a.C0922a.f(wf.a.f74274a, "ReportWorker", "ReportWorker doWork " + System.currentTimeMillis(), false, 4, null);
            i.a aVarC = i.a.c();
            Intrinsics.g(aVarC, "success(...)");
            return aVarC;
        } catch (Exception e10) {
            e10.printStackTrace();
            i.a aVarA = i.a.a();
            Intrinsics.g(aVarA, "failure(...)");
            return aVarA;
        }
    }
}
