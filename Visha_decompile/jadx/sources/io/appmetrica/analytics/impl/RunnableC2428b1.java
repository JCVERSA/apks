package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.StartupParamsCallback;
import java.util.List;

public final class RunnableC2428b1 implements Runnable {
    public final Context a;
    public final StartupParamsCallback b;
    public final List c;
    public final C2702m1 d;

    public RunnableC2428b1(C2702m1 c2702m1, Context context, StartupParamsCallback startupParamsCallback, List list) {
        this.d = c2702m1;
        this.a = context;
        this.b = startupParamsCallback;
        this.c = list;
    }

    @Override
    public final void run() {
        C2801q0 c2801q0 = this.d.a;
        Context applicationContext = this.a.getApplicationContext();
        c2801q0.getClass();
        C2776p0 c2776p0A = C2776p0.a(applicationContext);
        c2776p0A.f().a(this.b, this.c);
    }
}
