package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class yy {
    private final tp1 a;
    private final ff1 b;
    private final p51 c;
    private final dk1 d;

    public yy(o3 o3Var, o8 o8Var, tp1 tp1Var, r91 r91Var, p51 p51Var, dk1 dk1Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(o8Var, "adResponse");
        y45.j(tp1Var, "reporter");
        y45.j(r91Var, "openUrlHandler");
        y45.j(p51Var, "nativeAdEventController");
        y45.j(dk1Var, "preferredPackagesViewer");
        this.a = tp1Var;
        this.b = r91Var;
        this.c = p51Var;
        this.d = dk1Var;
    }

    public final void a(Context context, uy uyVar) {
        y45.j(context, "context");
        y45.j(uyVar, "action");
        if (this.d.a(context, uyVar.d())) {
            this.a.a(op1.b.F);
            this.c.d();
        } else {
            this.b.a(uyVar.c());
        }
    }
}
