package io.appmetrica.analytics.impl;

import android.app.Activity;

public final class RunnableC2528f1 implements Runnable {
    public final Activity a;
    public final C2702m1 b;

    public RunnableC2528f1(C2702m1 c2702m1, Activity activity) {
        this.b = c2702m1;
        this.a = activity;
    }

    @Override
    public final void run() {
        C2702m1 c2702m1 = this.b;
        Ak ak = c2702m1.h;
        Activity activity = this.a;
        Pa pa = c2702m1.d().a;
        if (activity != null) {
            ak.f.a(activity);
        }
        if (ak.e.a(activity, EnumC2800q.PAUSED)) {
            pa.b(activity);
        }
    }
}
