package com.transsion.push.worker;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import androidx.work.i;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.push.notification.ToolbarNotificationUtils;
import com.transsion.push.utils.NotificationUtil;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlinx.coroutines.u0;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 \u000e2\u00020\u0001:\u0001\u000fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0096@¢\u0006\u0004\b\t\u0010\nR\u0016\u0010\r\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0010"}, d2 = {"Lcom/transsion/push/worker/PullWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "context", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "Landroidx/work/i$a;", CampaignEx.JSON_KEY_AD_R, "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "h", "Landroid/content/Context;", "mContext", "i", "a", "push_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PullWorker extends CoroutineWorker {

    private Context mContext;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PullWorker(Context context, WorkerParameters params) {
        super(context, params);
        Intrinsics.h(context, "context");
        Intrinsics.h(params, "params");
        this.mContext = context;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object r(Continuation continuation) {
        PullWorker$doWork$1 pullWorker$doWork$1;
        if (continuation instanceof PullWorker$doWork$1) {
            pullWorker$doWork$1 = (PullWorker$doWork$1) continuation;
            int i10 = pullWorker$doWork$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                pullWorker$doWork$1.label = i10 - Integer.MIN_VALUE;
            } else {
                pullWorker$doWork$1 = new PullWorker$doWork$1(this, continuation);
            }
        } else {
            pullWorker$doWork$1 = new PullWorker$doWork$1(this, continuation);
        }
        Object obj = pullWorker$doWork$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = pullWorker$doWork$1.label;
        if (i11 == 0) {
            ResultKt.b(obj);
            int iNextInt = Random.INSTANCE.nextInt(0, 120);
            wf.a.f74274a.c("PullWorker", "doWork random * " + iNextInt, true);
            pullWorker$doWork$1.label = 1;
            if (u0.a(((long) iNextInt) * 1000, pullWorker$doWork$1) == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(obj);
        }
        try {
            NotificationUtil notificationUtil = NotificationUtil.f48898a;
            NotificationUtil.Q(notificationUtil, this.mContext, null, 2, null);
            notificationUtil.v();
            ToolbarNotificationUtils.f48776a.i();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        i.a aVarC = i.a.c();
        Intrinsics.g(aVarC, "success(...)");
        return aVarC;
    }
}
