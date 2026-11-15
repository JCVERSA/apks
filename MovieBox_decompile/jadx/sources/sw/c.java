package sw;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import com.blankj.utilcode.util.Utils;
import com.transsion.ad.ps.installed.AppInstallManager;
import com.transsion.wrapperad.install.appinfo.AppChangeInfo;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.mvel2.ast.ASTNode;
import tw.d;

public final class c {

    public static final c f72437a = new c();

    private c() {
    }

    public final void a(Context context, AppChangeInfo info) {
        Object objM453constructorimpl;
        Intrinsics.h(context, "context");
        Intrinsics.h(info, "info");
        try {
            Result.Companion companion = Result.INSTANCE;
            mw.a aVar = mw.a.f66724a;
            if (aVar.m()) {
                Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(info.getPackageName());
                if (launchIntentForPackage == null) {
                    return;
                }
                launchIntentForPackage.addFlags(ASTNode.DEOP);
                com.transsion.wrapperad.install.a.f55997a.a("AppLaunchNotifier --> launchDirect() --> 拉起应用 " + info.getAppName());
                context.startActivity(launchIntentForPackage);
                AppInstallManager appInstallManager = AppInstallManager.f41147a;
                Application applicationA = Utils.a();
                Intrinsics.g(applicationA, "getApp(...)");
                appInstallManager.f(applicationA, info.getPackageName());
            } else if (!aVar.n()) {
                com.transsion.wrapperad.install.a.f55997a.a("AppLaunchNotifier --> launchDirect() --> isShowInstalledGuideTipView == false");
            } else if (b.f72436a.a(context)) {
                d.f72867a.c(info);
            } else {
                com.transsion.wrapperad.install.a.f55997a.a("AppLaunchNotifier --> launchDirect() --> isShowInstalledGuideTipView == false -- 不在前台");
            }
            objM453constructorimpl = Result.m453constructorimpl(Unit.f64096a);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
        }
        Throwable thM456exceptionOrNullimpl = Result.m456exceptionOrNullimpl(objM453constructorimpl);
        if (thM456exceptionOrNullimpl != null) {
            com.transsion.wrapperad.install.a.f55997a.a("AppLaunchNotifier --> launchDirect() --> it = " + thM456exceptionOrNullimpl);
        }
    }
}
