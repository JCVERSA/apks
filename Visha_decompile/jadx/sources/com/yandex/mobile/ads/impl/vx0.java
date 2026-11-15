package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class vx0 implements q51 {
    private final a a;

    public interface a {
        void a(p51 p51Var);
    }

    public vx0(a aVar) {
        y45.j(aVar, "createEventControllerListener");
        this.a = aVar;
    }

    @Override
    public final p51 a(Context context, o8 o8Var, o3 o3Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        p51 p51Var = new p51(context, o3Var, o8Var);
        this.a.a(p51Var);
        return p51Var;
    }
}
