package com.transsion.wrapperad.install;

import android.app.Application;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import androidx.p009lifecycle.e;
import androidx.p009lifecycle.f;
import androidx.p009lifecycle.g0;
import androidx.p009lifecycle.u;
import kotlin.jvm.internal.Intrinsics;

public final class b implements f {

    public static final b f55998a = new b();

    private static Context f55999b;

    private static AppChangeReceiver f56000c;

    private static boolean f56001d;

    private b() {
    }

    private final String a() {
        String simpleName = b.class.getSimpleName();
        Intrinsics.g(simpleName, "getSimpleName(...)");
        return simpleName;
    }

    private final void c() {
        if (f56001d) {
            return;
        }
        f56000c = new AppChangeReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.PACKAGE_ADDED");
        intentFilter.addAction("android.intent.action.PACKAGE_REMOVED");
        intentFilter.addAction("android.intent.action.PACKAGE_REPLACED");
        intentFilter.addDataScheme("package");
        Context context = null;
        if (Build.VERSION.SDK_INT >= 33) {
            Context context2 = f55999b;
            if (context2 == null) {
                Intrinsics.y("appContext");
            } else {
                context = context2;
            }
            context.registerReceiver(f56000c, intentFilter, 4);
        } else {
            Context context3 = f55999b;
            if (context3 == null) {
                Intrinsics.y("appContext");
            } else {
                context = context3;
            }
            context.registerReceiver(f56000c, intentFilter);
        }
        f56001d = true;
    }

    private final void d() {
        if (f56001d) {
            AppChangeReceiver appChangeReceiver = f56000c;
            if (appChangeReceiver != null) {
                try {
                    Context context = f55999b;
                    if (context == null) {
                        Intrinsics.y("appContext");
                        context = null;
                    }
                    context.unregisterReceiver(appChangeReceiver);
                } catch (IllegalArgumentException unused) {
                }
            }
            f56000c = null;
            f56001d = false;
        }
    }

    public final void b(Application application) {
        Intrinsics.h(application, "application");
        f55999b = application.getApplicationContext();
        g0.f9280i.a().getLifecycle().a(this);
        a.f55997a.a(a() + " --> init() --> 初始化成功");
    }

    @Override
    public void onCreate(u uVar) {
        e.a(this, uVar);
    }

    @Override
    public void onDestroy(u uVar) {
        e.b(this, uVar);
    }

    @Override
    public void onPause(u uVar) {
        e.c(this, uVar);
    }

    @Override
    public void onResume(u uVar) {
        e.d(this, uVar);
    }

    @Override
    public void onStart(u owner) {
        Intrinsics.h(owner, "owner");
        d();
        c();
    }

    @Override
    public void onStop(u owner) {
        Intrinsics.h(owner, "owner");
        d();
    }
}
