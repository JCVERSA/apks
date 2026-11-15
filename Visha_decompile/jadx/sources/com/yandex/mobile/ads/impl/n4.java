package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class n4 {
    private final mt0 a;
    private final mi b;

    public n4() {
        this(new mt0(), new mi());
    }

    public final String a(Context context) {
        y45.j(context, "context");
        this.a.getClass();
        String strA = mt0.a(context);
        if (strA == null) {
            strA = this.b.a(context);
        }
        return a(strA);
    }

    public n4(mt0 mt0Var, mi miVar) {
        y45.j(mt0Var, "manifestAnalyzer");
        y45.j(miVar, "availableHostSelector");
        this.a = mt0Var;
        this.b = miVar;
    }

    private static String a(String str) {
        return "https://" + str;
    }
}
