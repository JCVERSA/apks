package com.transsion.wrapperad.install;

import android.content.Context;
import android.os.Build;
import com.transsion.ad.ps.installed.AppInstallManager;
import com.transsion.wrapperad.install.appinfo.AppChangeInfo;
import com.transsion.wrapperad.install.open.ChangeType;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.n0;
import qi.h;
import rw.c;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlinx/coroutines/n0;", "", "<anonymous>", "(Lkotlinx/coroutines/n0;)V"}, k = 3, mv = {2, 1, 0})
@DebugMetadata(c = "com.transsion.wrapperad.install.AppChangeReceiver$doWork$1", f = "AppChangeReceiver.kt", l = {86}, m = "invokeSuspend")
final class AppChangeReceiver$doWork$1 extends SuspendLambda implements Function2<n0, Continuation<? super Unit>, Object> {
    final ChangeType $changeType;
    final Context $context;
    final String $packageName;
    private Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    final AppChangeReceiver this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AppChangeReceiver$doWork$1(Context context, String str, ChangeType changeType, AppChangeReceiver appChangeReceiver, Continuation<? super AppChangeReceiver$doWork$1> continuation) {
        super(2, continuation);
        this.$context = context;
        this.$packageName = str;
        this.$changeType = changeType;
        this.this$0 = appChangeReceiver;
    }

    @Override
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        AppChangeReceiver$doWork$1 appChangeReceiver$doWork$1 = new AppChangeReceiver$doWork$1(this.$context, this.$packageName, this.$changeType, this.this$0, continuation);
        appChangeReceiver$doWork$1.L$0 = obj;
        return appChangeReceiver$doWork$1;
    }

    @Override
    public final Object invokeSuspend(Object obj) {
        Context context;
        String str;
        AppChangeReceiver appChangeReceiver;
        AppChangeInfo appChangeInfo;
        ChangeType changeType;
        Object objF = IntrinsicsKt.f();
        int i10 = this.label;
        try {
            if (i10 == 0) {
                ResultKt.b(obj);
                context = this.$context;
                str = this.$packageName;
                ChangeType changeType2 = this.$changeType;
                appChangeReceiver = this.this$0;
                Result.Companion companion = Result.INSTANCE;
                AppChangeInfo appChangeInfoA = c.f71371a.a(context, str, changeType2);
                AppInstallManager appInstallManager = AppInstallManager.f41147a;
                String packageName = appChangeInfoA.getPackageName();
                this.L$0 = context;
                this.L$1 = str;
                this.L$2 = changeType2;
                this.L$3 = appChangeReceiver;
                this.L$4 = appChangeInfoA;
                this.label = 1;
                Object objD = appInstallManager.d(context, packageName, this);
                if (objD == objF) {
                    return objF;
                }
                appChangeInfo = appChangeInfoA;
                changeType = changeType2;
                obj = objD;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                appChangeInfo = (AppChangeInfo) this.L$4;
                appChangeReceiver = (AppChangeReceiver) this.L$3;
                changeType = (ChangeType) this.L$2;
                str = (String) this.L$1;
                context = (Context) this.L$0;
                ResultKt.b(obj);
            }
            if (!((Boolean) obj).booleanValue()) {
                a.f55997a.a(appChangeReceiver.c() + " --> doWork() --> 拦截安装应用,他不是MB触发下载的 --> pkg = " + str);
                return Unit.f64096a;
            }
            HashMap map = new HashMap();
            map.put("package_name", str);
            h.f69682a.q("AppChangeReceiver", "broadcast", map);
            a.f55997a.a(appChangeReceiver.c() + " --> doWork() --> pkg = " + changeType + " -- type = " + changeType + " -- info = " + appChangeInfo);
            if (changeType == ChangeType.INSTALLED && (Build.VERSION.SDK_INT < 29 || sw.b.f72436a.a(context))) {
                sw.c.f72437a.a(context, appChangeInfo);
            }
            Result.m453constructorimpl(Unit.f64096a);
            return Unit.f64096a;
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    @Override
    public final Object invoke(n0 n0Var, Continuation<? super Unit> continuation) {
        return ((AppChangeReceiver$doWork$1) create(n0Var, continuation)).invokeSuspend(Unit.f64096a);
    }
}
