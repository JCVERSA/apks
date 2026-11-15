package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class q91 {
    private final i91 a;
    private final kc1 b;
    private final eb1 c;

    public q91(Context context, g5 g5Var, e51 e51Var) {
        this(context, g5Var, e51Var, new i91(context, g5Var), new kc1(g5Var));
    }

    public final void a() {
        this.c.a();
        this.a.getClass();
        this.b.getClass();
    }

    public q91(Context context, g5 g5Var, e51 e51Var, i91 i91Var, kc1 kc1Var) {
        y45.j(context, "context");
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(e51Var, "nativeAdControllers");
        y45.j(i91Var, "nativeImagesLoader");
        y45.j(kc1Var, "webViewLoader");
        this.a = i91Var;
        this.b = kc1Var;
        this.c = e51Var.a();
    }
}
