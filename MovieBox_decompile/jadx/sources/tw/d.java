package tw;

import android.os.Handler;
import android.os.Looper;
import com.transsion.wrapperad.install.appinfo.AppChangeInfo;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.Intrinsics;

public final class d {

    private static AppChangeInfo f72868b;

    private static a f72871e;

    public static final d f72867a = new d();

    private static final AtomicBoolean f72869c = new AtomicBoolean(false);

    private static final ConcurrentLinkedQueue f72870d = new ConcurrentLinkedQueue();

    private static final Handler f72872f = new Handler(Looper.getMainLooper());

    private d() {
    }

    private final void d(AppChangeInfo appChangeInfo) {
        if (appChangeInfo == null) {
            com.transsion.wrapperad.install.a.f55997a.a(i() + " --> displayTask() --> info == null");
            f72868b = null;
            f72869c.set(false);
            return;
        }
        AtomicBoolean atomicBoolean = f72869c;
        if (atomicBoolean.get()) {
            com.transsion.wrapperad.install.a.f55997a.a(i() + " --> displayTask() --> isTaskShowing == true");
            return;
        }
        atomicBoolean.set(true);
        f72868b = appChangeInfo;
        final int iL = mw.a.f66724a.l();
        Handler handler = f72872f;
        handler.post(new Runnable() {
            @Override
            public final void run() {
                d.e(iL);
            }
        });
        handler.postDelayed(new Runnable() {
            @Override
            public final void run() {
                d.f();
            }
        }, ((long) iL) * 1000);
    }

    public static final void e(int i10) {
        a aVar = f72871e;
        if (aVar != null) {
            aVar.onAppInstalledTipStart();
        }
        com.transsion.wrapperad.install.a aVar2 = com.transsion.wrapperad.install.a.f55997a;
        String strI = f72867a.i();
        a aVar3 = f72871e;
        aVar2.a(strI + " --> displayTask() --> listener = " + (aVar3 != null ? Integer.valueOf(aVar3.hashCode()) : null) + " --> items = " + i10);
    }

    public static final void f() {
        f72868b = null;
        com.transsion.wrapperad.install.a aVar = com.transsion.wrapperad.install.a.f55997a;
        d dVar = f72867a;
        aVar.a(dVar.i() + " --> displayTask() --> 时间到自动关闭");
        a aVar2 = f72871e;
        if (aVar2 != null) {
            aVar2.onAppInstalledTipEnd();
        }
        f72869c.set(false);
        aVar.a(dVar.i() + " --> displayTask() --> isTaskShowing = false");
        dVar.g();
    }

    private final String i() {
        String simpleName = f72867a.getClass().getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    public final void c(AppChangeInfo info) {
        Intrinsics.h(info, "info");
        f72870d.add(info);
        com.transsion.wrapperad.install.a.f55997a.a(i() + " --> addAppChangeInfo() --> " + info.getPackageName());
        g();
    }

    public final void g() {
        AppChangeInfo appChangeInfo = (AppChangeInfo) f72870d.poll();
        f72872f.removeCallbacksAndMessages(null);
        com.transsion.wrapperad.install.a.f55997a.a(i() + " --> doNextTask() --> " + (appChangeInfo != null ? appChangeInfo.getPackageName() : null) + " --> 消息清空");
        d(appChangeInfo);
    }

    public final AppChangeInfo h() {
        AppChangeInfo appChangeInfo = f72868b;
        if (appChangeInfo != null) {
            return appChangeInfo;
        }
        g();
        return f72868b;
    }

    public final void j(a aVar) {
        f72871e = aVar;
    }
}
