package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class kf {
    private final jf a;
    private final ie b;
    private final ue c;

    public kf(jf jfVar, ie ieVar, ue ueVar) {
        y45.j(jfVar, "appMetricaPolicyConfigurator");
        y45.j(ieVar, "appAdAnalyticsActivator");
        y45.j(ueVar, "appMetricaAdapter");
        this.a = jfVar;
        this.b = ieVar;
        this.c = ueVar;
    }

    public final sp1 a(Context context) {
        y45.j(context, "context");
        return this.c.a(context, pa.a(context) ? "322a737a-a0ca-44e0-bc85-649b1c7c1db6" : "478cb909-6ad1-4e12-84cc-b3629a789f93", this.a, this.b);
    }
}
