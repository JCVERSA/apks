package io.appmetrica.analytics.impl;

import android.app.Activity;

public final class RunnableC2625j implements Runnable {
    public final Activity a;
    public final C2675l b;

    public RunnableC2625j(C2675l c2675l, Activity activity) {
        this.b = c2675l;
        this.a = activity;
    }

    @Override
    public final void run() {
        this.b.a(this.a);
    }
}
