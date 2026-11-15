package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.net.Uri;
import defpackage.y45;

public final class ja2 {
    private final pa2 a;

    public ja2(pa2 pa2Var) {
        y45.j(pa2Var, "vastUrlConfigurator");
        this.a = pa2Var;
    }

    public final w92 a(Context context, o3 o3Var, ha2 ha2Var, ia2 ia2Var, Object obj, aa2 aa2Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(ha2Var, "requestConfiguration");
        y45.j(ia2Var, "requestConfigurationParametersProvider");
        y45.j(obj, "requestTag");
        y45.j(aa2Var, "requestListener");
        a8 a8Var = new a8(ha2Var.a());
        la2 la2Var = new la2(a8Var);
        Uri uri = Uri.parse(a8Var.a().a());
        pa2 pa2Var = this.a;
        pa2Var.getClass();
        y45.j(context, "context");
        y45.j(uri, "uri");
        y45.j(o3Var, "adConfiguration");
        y45.j(ia2Var, "requestConfigurationParametersProvider");
        String string = in1.a.a(uri, new oa2(pa2Var, ia2Var, o3Var, context)).toString();
        y45.i(string, "toString(...)");
        w92 w92Var = new w92(context, o3Var, string, new zi2(aa2Var), ha2Var, la2Var, new ca2(context, o3Var.q().c()));
        w92Var.b(obj);
        return w92Var;
    }
}
