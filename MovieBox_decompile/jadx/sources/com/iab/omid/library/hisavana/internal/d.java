package com.iab.omid.library.hisavana.internal;

import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;

public class d implements Application.ActivityLifecycleCallbacks {

    private boolean f32743a;

    protected boolean f32744b;

    private a f32745c;

    public interface a {
        void a(boolean z10);
    }

    private void c(boolean z10) {
        if (this.f32744b != z10) {
            this.f32744b = z10;
            if (this.f32743a) {
                f(z10);
                a aVar = this.f32745c;
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
        this.f32745c = aVar;
    }

    ActivityManager.RunningAppProcessInfo e() {
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        return runningAppProcessInfo;
    }

    protected void f(boolean z10) {
    }

    public boolean g() {
        return this.f32744b;
    }

    protected boolean h() {
        return false;
    }

    public void i() {
        this.f32743a = true;
        boolean zD = d();
        this.f32744b = zD;
        f(zD);
    }

    public void j() {
        this.f32743a = false;
        this.f32745c = null;
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
