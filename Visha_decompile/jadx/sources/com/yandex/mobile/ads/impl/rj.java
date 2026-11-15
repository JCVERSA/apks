package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;

public final class rj {
    private final o3 a;
    private final Context b;

    public rj(Context context, o3 o3Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        this.a = o3Var;
        this.b = context.getApplicationContext();
    }

    public final qj a(o8<String> o8Var, gz1 gz1Var) throws tj2 {
        y45.j(o8Var, "adResponse");
        y45.j(gz1Var, "configurationSizeInfo");
        try {
            Context context = this.b;
            y45.i(context, "appContext");
            return new qj(context, o8Var, this.a, gz1Var);
        } catch (Throwable unused) {
            throw new tj2();
        }
    }
}
