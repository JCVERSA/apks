package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.view.View;
import com.hunantv.imgo.net.entity.AuthInfo;
import defpackage.y45;

public final class i3 implements j3 {
    private final bv1 a;
    private final o8<?> b;
    private final o3 c;
    private final p51 d;
    private final g42 e;
    private final v9 f;
    private final y41 g;
    private final y62 h;
    private final c5 i;
    private x71 j;

    public i3(Context context, bv1 bv1Var, o8 o8Var, o3 o3Var, p51 p51Var, g42 g42Var) {
        v9 v9Var = new v9(context, o3Var);
        this(context, bv1Var, o8Var, o3Var, p51Var, g42Var, v9Var, new y41(context, o3Var, o8Var), new y62(v9Var), new c5(p51Var));
    }

    @Override
    public final gf0 a(View view, ig<?> igVar, vr0 vr0Var, g71 g71Var) {
        y45.j(view, "view");
        y45.j(igVar, "asset");
        y45.j(vr0Var, AuthInfo.Component.CODE_LINK);
        y45.j(g71Var, "nativeAdViewAdapter");
        this.d.a(vr0Var);
        Context context = view.getContext();
        t8 t8VarA = this.i.a();
        ep epVarA = this.g.a(igVar.b(), "url");
        g42 g42Var = this.e;
        y45.g(context);
        s91 s91Var = new s91(this.f, g42Var.a(context, this.a, this.c, this.b, t8VarA));
        r91 r91VarA = s91Var.a(epVarA);
        o3 o3Var = this.c;
        o8<?> o8Var = this.b;
        p51 p51Var = this.d;
        gf0 gf0VarA = new f0(o3Var, o8Var, epVarA, s91Var, g71Var, p51Var, new a0(o3Var, o8Var, epVarA, s91Var, g71Var, p51Var, this.j)).a(view, vr0Var.a());
        this.h.a(vr0Var.d());
        String strE = vr0Var.e();
        if (strE != null && strE.length() > 0) {
            r91VarA.a(strE);
        }
        return gf0VarA;
    }

    public i3(Context context, bv1 bv1Var, o8<?> o8Var, o3 o3Var, p51 p51Var, g42 g42Var, v9 v9Var, y41 y41Var, y62 y62Var, c5 c5Var) {
        y45.j(context, "context");
        y45.j(bv1Var, "sdkEnvironmentModule");
        y45.j(o8Var, "adResponse");
        y45.j(o3Var, "adConfiguration");
        y45.j(p51Var, "nativeAdEventController");
        y45.j(g42Var, "targetUrlHandlerProvider");
        y45.j(v9Var, "adTracker");
        y45.j(y41Var, "clickReporterCreator");
        y45.j(y62Var, "trackingUrlHandler");
        y45.j(c5Var, "adLinksHandlerReceiver");
        this.a = bv1Var;
        this.b = o8Var;
        this.c = o3Var;
        this.d = p51Var;
        this.e = g42Var;
        this.f = v9Var;
        this.g = y41Var;
        this.h = y62Var;
        this.i = c5Var;
    }

    public final void a(x71 x71Var) {
        this.j = x71Var;
        this.g.a(x71Var);
    }
}
