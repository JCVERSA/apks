package com.wecloud.load.lib;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import com.google.gson.Gson;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import com.wecloud.load.lib.bean.SoLoadControlConfig;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.y0;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u000b2\u00020\u0001:\u0001\fB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bH\u0096@¢\u0006\u0004\b\t\u0010\n¨\u0006\r"}, d2 = {"Lcom/wecloud/load/lib/ExitCheckWorker;", "Landroidx/work/CoroutineWorker;", "Landroid/content/Context;", "context", "Landroidx/work/WorkerParameters;", "params", "<init>", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "Landroidx/work/i$a;", CampaignEx.JSON_KEY_AD_R, "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "h", "a", "lib_release"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class ExitCheckWorker extends CoroutineWorker {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(Context context) {
            Intrinsics.h(context, "context");
            String strL = tx.b.f72876a.b().l("so_load_control_config", null);
            if (strL == null || StringsKt.q0(strL)) {
                wf.a.C0922a.f(wf.a.f74274a, "ExitCheckWorker", "ExitCheckWorker: MMKV 中无配置，跳过", false, 4, null);
                return false;
            }
            SoLoadControlConfig soLoadControlConfig = (SoLoadControlConfig) new Gson().fromJson(strL, SoLoadControlConfig.class);
            if (soLoadControlConfig == null || !soLoadControlConfig.getExitProcess()) {
                wf.a.C0922a.f(wf.a.f74274a, "ExitCheckWorker", "ExitCheckWorker: exitProcess 为 false，跳过", false, 4, null);
                return false;
            }
            wf.a.C0922a c0922a = wf.a.f74274a;
            wf.a.C0922a.f(c0922a, "ExitCheckWorker", "ExitCheckWorker: 检测到 exitProcess 为 true，清空配置并尝试通知 SoLoadService 退出", false, 4, null);
            DySoLoadManager.f58570a.i(context, "");
            p pVar = p.f58638a;
            if (!pVar.a()) {
                wf.a.C0922a.f(c0922a, "ExitCheckWorker", "ExitCheckWorker: SoLoadService 已停止，跳过", false, 4, null);
                return false;
            }
            wf.a.C0922a.f(c0922a, "ExitCheckWorker", "ExitCheckWorker: SoLoadService 存活，触发退出检查", false, 4, null);
            pVar.c();
            return true;
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ExitCheckWorker(Context context, WorkerParameters params) {
        super(context, params);
        Intrinsics.h(context, "context");
        Intrinsics.h(params, "params");
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override
    public Object r(Continuation continuation) {
        ExitCheckWorker$doWork$1 exitCheckWorker$doWork$1;
        if (continuation instanceof ExitCheckWorker$doWork$1) {
            exitCheckWorker$doWork$1 = (ExitCheckWorker$doWork$1) continuation;
            int i10 = exitCheckWorker$doWork$1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                exitCheckWorker$doWork$1.label = i10 - Integer.MIN_VALUE;
            } else {
                exitCheckWorker$doWork$1 = new ExitCheckWorker$doWork$1(this, continuation);
            }
        } else {
            exitCheckWorker$doWork$1 = new ExitCheckWorker$doWork$1(this, continuation);
        }
        Object objG = exitCheckWorker$doWork$1.result;
        Object objF = IntrinsicsKt.f();
        int i11 = exitCheckWorker$doWork$1.label;
        if (i11 == 0) {
            ResultKt.b(objG);
            i0 i0VarB = y0.b();
            ExitCheckWorker$doWork$2 exitCheckWorker$doWork$2 = new ExitCheckWorker$doWork$2(this, null);
            exitCheckWorker$doWork$1.label = 1;
            objG = kotlinx.coroutines.i.g(i0VarB, exitCheckWorker$doWork$2, exitCheckWorker$doWork$1);
            if (objG == objF) {
                return objF;
            }
        } else {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.b(objG);
        }
        Intrinsics.g(objG, "withContext(...)");
        return objG;
    }
}
