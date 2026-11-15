package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.yandex.mobile.ads.impl.zf0;
import defpackage.y45;

public final class zf0 {
    private final bg0 a;
    private final n2 b;
    private final gg0 c;

    public zf0(Context context) {
        bg0 bg0Var = new bg0();
        int i = n2.e;
        this(context, bg0Var, n2.a.a(context), new gg0(context));
    }

    public final void a(final e2 e2Var, final g2 g2Var) {
        y45.j(e2Var, "adBlockerDetectorListener");
        y45.j(g2Var, "requestPolicy");
        this.a.a(new cg0() {
            @Override
            public final void a(Boolean bool) {
                zf0.a(this.a, g2Var, e2Var, bool);
            }
        }, this.c.a(g2Var));
    }

    public zf0(Context context, bg0 bg0Var, n2 n2Var, gg0 gg0Var) {
        y45.j(context, "context");
        y45.j(bg0Var, "hostAccessAdBlockerDetector");
        y45.j(n2Var, "adBlockerStateStorageManager");
        y45.j(gg0Var, "hostAccessCheckerFactory");
        this.a = bg0Var;
        this.b = n2Var;
        this.c = gg0Var;
    }

    public static final void a(zf0 zf0Var, g2 g2Var, e2 e2Var, Boolean bool) {
        y45.j(zf0Var, "this$0");
        y45.j(g2Var, "$requestPolicy");
        y45.j(e2Var, "$adBlockerDetectorListener");
        zf0Var.b.a(bool, g2Var);
        e2Var.a();
    }
}
