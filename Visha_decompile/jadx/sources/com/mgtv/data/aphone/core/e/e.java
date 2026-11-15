package com.mgtv.data.aphone.core.e;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.util.SparseArray;

public class e implements com.mgtv.data.aphone.core.d.b {
    public static boolean a = false;
    public static boolean b = false;
    private static e c;
    private boolean d = true;
    private SparseArray<com.mgtv.data.aphone.core.b.a> e = new SparseArray<>();

    public static e a() {
        if (c == null) {
            c = new e();
        }
        return c;
    }

    @Override
    public void b(Activity activity) {
        com.mgtv.data.aphone.core.j.c.b("big_data_sdk", "@@@@@@@@@@@@@@@@@ onActivityResumed ");
        if (this.e.indexOfKey(activity.hashCode()) > 0) {
            return;
        }
        com.mgtv.data.aphone.core.b.a aVar = new com.mgtv.data.aphone.core.b.a();
        aVar.a(activity);
        this.e.put(activity.hashCode(), aVar);
    }

    @Override
    public void c(Activity activity) {
        com.mgtv.data.aphone.core.j.c.b("big_data_sdk", "@@@@@@@@@@@@@@@@@ onActivityPaused ");
        com.mgtv.data.aphone.core.b.a aVar = this.e.get(activity.hashCode());
        if (aVar != null) {
            aVar.a();
        }
    }

    @Override
    public void d(Activity activity) {
        com.mgtv.data.aphone.core.j.c.b("big_data_sdk", "@@@@@@@@@@@@@@@@@ onActivityDestroyed ");
        this.d = true;
        com.mgtv.data.aphone.core.b.a aVar = this.e.get(activity.hashCode());
        if (aVar != null) {
            aVar.b();
        }
        this.e.remove(activity.hashCode());
    }

    @Override
    public void e(Activity activity) {
        com.mgtv.data.aphone.core.j.c.b("big_data_sdk", "@@@@@@@@@@@@@@@@@ onActivityStopped ");
    }

    public static void a(Application application) {
        application.registerActivityLifecycleCallbacks(new com.mgtv.data.aphone.core.a.b());
        a.a().a(c);
    }

    @Override
    public void a(Activity activity) {
        com.mgtv.data.aphone.core.j.c.b("big_data_sdk", "@@@@@@@@@@@@@@@@@ onActivityStarted ");
    }

    @Override
    public void b(Activity activity, Bundle bundle) {
        com.mgtv.data.aphone.core.j.c.b("big_data_sdk", "@@@@@@@@@@@@@@@@@ onActivitySaveInstanceState ");
    }

    @Override
    public void a(Activity activity, Bundle bundle) {
        com.mgtv.data.aphone.core.j.c.b("big_data_sdk", "@@@@@@@@@@@@@@@@@ onActivityCreated ");
    }
}
