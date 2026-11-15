package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.yandex.div.core.view2.Div2View;
import defpackage.y45;
import java.util.Locale;

public final class q20 {
    private final o20 a;
    private final n30 b;

    public q20(o20 o20Var, n30 n30Var) {
        y45.j(o20Var, "actionHandler");
        y45.j(n30Var, "divViewCreator");
        this.a = o20Var;
        this.b = n30Var;
    }

    public final Div2View a(Context context, n20 n20Var) {
        String lowerCase;
        y45.j(context, "context");
        y45.j(n20Var, "action");
        defpackage.jh2 jh2VarB = new jh2.b(new j20(context)).a(this.a).e(new m30(context)).b();
        y45.i(jh2VarB, "build(...)");
        this.b.getClass();
        Div2View div2ViewA = n30.a(context, jh2VarB, null);
        div2ViewA.setData(n20Var.c().b(), n20Var.c().c());
        kf1 kf1VarA = ks.a(context);
        if (kf1VarA == kf1.e) {
            lowerCase = "PORTRAIT".toLowerCase(Locale.ROOT);
            y45.i(lowerCase, "toLowerCase(...)");
        } else {
            lowerCase = kf1VarA.name().toLowerCase(Locale.ROOT);
            y45.i(lowerCase, "toLowerCase(...)");
        }
        div2ViewA.setVariable("orientation", lowerCase);
        return div2ViewA;
    }
}
