package com.iab.omid.library.vungle.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;

public class d implements Application.ActivityLifecycleCallbacks {

    private boolean f32977a;

    protected boolean f32978b;

    private a f32979c;

    public interface a {
        void a(boolean z10);
    }

    private void c(boolean z10) {
        if (this.f32978b != z10) {
            this.f32978b = z10;
            if (this.f32977a) {
                f(z10);
                a aVar = this.f32979c;
                if (aVar != null) {
                    aVar.a(z10);
                }
            }
        }
    }

    private boolean d() {
        return e().importance == 100 || h();
    }

    public void a(Context context) {
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(this);
        }
    }

    public void b(a aVar) {
        this.f32979c = aVar;
    }

    ActivityManager.RunningAppProcessInfo e() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        return runningAppProcessInfo;
    }

    protected void f(boolean z10) {
    }

    public boolean g() {
        return this.f32978b;
    }

    protected boolean h() {
        return false;
    }

    public void i() {
        this.f32977a = true;
        boolean zD = d();
        this.f32978b = zD;
        f(zD);
    }

    public void j() {
        this.f32977a = false;
        this.f32979c = null;
    }

    @Override
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override
    public void onActivityDestroyed(Activity activity) {
    }

    @Override
    public void onActivityPaused(Activity activity) {
    }

    @Override
    public void onActivityResumed(Activity activity) {
    }

    @Override
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override
    public void onActivityStarted(Activity activity) {
        c(true);
    }

    @Override
    public void onActivityStopped(Activity activity) {
        c(d());
    }
}
