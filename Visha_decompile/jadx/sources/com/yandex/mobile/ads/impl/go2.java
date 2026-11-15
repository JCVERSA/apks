package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.NonNull;
import java.util.Iterator;

public final class go2 implements Application.ActivityLifecycleCallbacks {

    @SuppressLint({"StaticFieldLeak"})
    private static go2 d = new go2();
    private boolean a;
    private boolean b;
    private a c;

    public interface a {
    }

    private go2() {
    }

    public static go2 a() {
        return d;
    }

    public final void b() {
        this.a = true;
        this.b = false;
        Iterator<vn2> it = wn2.a().b().iterator();
        while (it.hasNext()) {
            it.next().j().a(true);
        }
    }

    public final void c() {
        this.a = false;
        this.b = false;
        this.c = null;
    }

    @Override
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override
    public final void onActivityPaused(Activity activity) {
    }

    @Override
    public final void onActivityResumed(Activity activity) {
    }

    @Override
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override
    public final void onActivityStarted(Activity activity) {
        if (this.b) {
            this.b = false;
            if (this.a) {
                Iterator<vn2> it = wn2.a().b().iterator();
                while (it.hasNext()) {
                    it.next().j().a(true);
                }
                if (this.c != null) {
                    g72.g().getClass();
                    g72.a();
                }
            }
        }
    }

    @Override
    public final void onActivityStopped(Activity activity) {
        View viewF;
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        boolean z = false;
        boolean z2 = runningAppProcessInfo.importance != 100;
        boolean z3 = true;
        for (vn2 vn2Var : wn2.a().c()) {
            if (vn2Var.g() && (viewF = vn2Var.f()) != null && viewF.hasWindowFocus()) {
                z3 = false;
            }
        }
        if (z2 && z3) {
            z = true;
        }
        if (this.b != z) {
            this.b = z;
            if (this.a) {
                boolean z4 = !z;
                Iterator<vn2> it = wn2.a().b().iterator();
                while (it.hasNext()) {
                    it.next().j().a(z4);
                }
                if (this.c != null) {
                    if (z) {
                        g72.g().getClass();
                        g72.c();
                    } else {
                        g72.g().getClass();
                        g72.a();
                    }
                }
            }
        }
    }

    public final void a(@NonNull Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(this);
        }
    }

    public final void a(a aVar) {
        this.c = aVar;
    }
}
