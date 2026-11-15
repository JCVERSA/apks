package com.transsion.startup.work;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import androidx.work.i;
import bm.e;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.transsion.ad.monopoly.manager.AdPlansRequestManager;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlinx.coroutines.u0;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u000b2\u00020\u0001:\u0001\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0096@¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/transsion/startup/work/NetworkDataSourceWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "context", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "Landroidx/work/i$a;", CampaignEx.JSON_KEY_AD_R, "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "h", "Companion", "Startup_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class NetworkDataSourceWorker extends CoroutineWorker {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:8:0x0014  */
        public final Object a(Continuation continuation) {
            NetworkDataSourceWorker$Companion$realWork$1 networkDataSourceWorker$Companion$realWork$1;
            if (continuation instanceof NetworkDataSourceWorker$Companion$realWork$1) {
                networkDataSourceWorker$Companion$realWork$1 = (NetworkDataSourceWorker$Companion$realWork$1) continuation;
                int i10 = networkDataSourceWorker$Companion$realWork$1.label;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    networkDataSourceWorker$Companion$realWork$1.label = i10 - Integer.MIN_VALUE;
                } else {
                    networkDataSourceWorker$Companion$realWork$1 = new NetworkDataSourceWorker$Companion$realWork$1(this, continuation);
                }
            } else {
                networkDataSourceWorker$Companion$realWork$1 = new NetworkDataSourceWorker$Companion$realWork$1(this, continuation);
            }
            NetworkDataSourceWorker$Companion$realWork$1 networkDataSourceWorker$Companion$realWork$2 = networkDataSourceWorker$Companion$realWork$1;
            Object obj = networkDataSourceWorker$Companion$realWork$2.result;
            Object objF = IntrinsicsKt.f();
            int i11 = networkDataSourceWorker$Companion$realWork$2.label;
            if (i11 != 0) {
                if (i11 == 1) {
                    ResultKt.b(obj);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.b(obj);
                }
                e.p(e.f15845a, null, null, 3, null);
                return Unit.f64096a;
            }
            ResultKt.b(obj);
            int iNextInt = Random.INSTANCE.nextInt(0, 60);
            wf.a.C0922a.f(wf.a.f74274a, "NetworkDataSourceWorker", "doWork random * " + iNextInt, false, 4, null);
            networkDataSourceWorker$Companion$realWork$2.label = 1;
            if (u0.a(((long) iNextInt) * 1000, networkDataSourceWorker$Companion$realWork$2) == objF) {
                return objF;
            }
            AdPlansRequestManager adPlansRequestManager = AdPlansRequestManager.f41104a;
            networkDataSourceWorker$Companion$realWork$2.label = 2;
            if (AdPlansRequestManager.u(adPlansRequestManager, "/wefeed-mobile-bff/ad/config", null, networkDataSourceWorker$Companion$realWork$2, 2, null) == objF) {
                return objF;
            }
            e.p(e.f15845a, null, null, 3, null);
            return Unit.f64096a;
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkDataSourceWorker(Context context, WorkerParameters params) {
        super(context, params);
        Intrinsics.h(context, "context");
        Intrinsics.h(params, "params");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object r(Continuation continuation) {
        NetworkDataSourceWorker$doWork$1 networkDataSourceWorker$doWork$1;
        if (continuation instanceof NetworkDataSourceWorker$doWork$1) {
            networkDataSourceWorker$doWork$1 = (NetworkDataSourceWorker$doWork$1) continuation;
            int i10 = networkDataSourceWorker$doWork$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                networkDataSourceWorker$doWork$1.label = i10 - Integer.MIN_VALUE;
            } else {
                networkDataSourceWorker$doWork$1 = new NetworkDataSourceWorker$doWork$1(this, continuation);
            }
        } else {
            networkDataSourceWorker$doWork$1 = new NetworkDataSourceWorker$doWork$1(this, continuation);
        }
        Object obj = networkDataSourceWorker$doWork$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = networkDataSourceWorker$doWork$1.label;
        try {
            if (i11 == 0) {
                ResultKt.b(obj);
                Companion companion = INSTANCE;
                networkDataSourceWorker$doWork$1.label = 1;
                if (companion.a(networkDataSourceWorker$doWork$1) == objF) {
                    return objF;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.b(obj);
            }
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
