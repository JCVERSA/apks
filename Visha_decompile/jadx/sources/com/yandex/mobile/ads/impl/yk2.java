package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.net.Uri;
import defpackage.y45;

public final class yk2 {
    private final pa2 a;
    private final rn0 b;

    public yk2(pa2 pa2Var, rn0 rn0Var) {
        y45.j(pa2Var, "vastUrlConfigurator");
        y45.j(rn0Var, "instreamHostChecker");
        this.a = pa2Var;
        this.b = rn0Var;
    }

    public final ta2 a(Context context, o3 o3Var, ia2 ia2Var, mb2 mb2Var, nd2 nd2Var, qk2 qk2Var) {
        String str;
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(ia2Var, "requestConfigurationParametersProvider");
        y45.j(mb2Var, "wrapperAd");
        y45.j(nd2Var, "reportParametersProvider");
        y45.j(qk2Var, "requestListener");
        String strK = mb2Var.k();
        if (strK == null) {
            strK = "";
        }
        Uri uri = Uri.parse(strK);
        this.b.getClass();
        if (rn0.a(uri)) {
            pa2 pa2Var = this.a;
            pa2Var.getClass();
            y45.j(context, "context");
            y45.j(uri, "uri");
            y45.j(o3Var, "adConfiguration");
            y45.j(ia2Var, "requestConfigurationParametersProvider");
            String string = in1.a.a(uri, new oa2(pa2Var, ia2Var, o3Var, context)).toString();
            y45.i(string, "toString(...)");
            str = string;
        } else {
            str = strK;
        }
        return new ta2(context, o3Var, str, new zi2(qk2Var), mb2Var, new zk2(nd2Var), new ca2(context, o3Var.q().c()));
    }
}
