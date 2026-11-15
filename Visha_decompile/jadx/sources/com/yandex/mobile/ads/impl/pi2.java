package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.net.Uri;
import defpackage.y45;
import java.util.HashMap;
import java.util.Map;

public final class pi2 {
    private static final String g = "https://mobile.yandexadexchange.net";
    private final b8 a;
    private final ri2 b;
    private final bq1 c;
    private final hq d;
    private final k50 e;
    private final kx1 f;

    public pi2(b8 b8Var, ri2 ri2Var, bq1 bq1Var, hq hqVar, k50 k50Var, kx1 kx1Var) {
        y45.j(b8Var, "adRequestProvider");
        y45.j(ri2Var, "requestReporter");
        y45.j(bq1Var, "requestHelper");
        y45.j(hqVar, "cmpRequestConfigurator");
        y45.j(k50Var, "encryptedQueryConfigurator");
        y45.j(kx1Var, "sensitiveModeChecker");
        this.a = b8Var;
        this.b = ri2Var;
        this.c = bq1Var;
        this.d = hqVar;
        this.e = k50Var;
        this.f = kx1Var;
    }

    public final ni2 a(Context context, o3 o3Var, oi2 oi2Var, Object obj, qi2 qi2Var) {
        y45.j(context, "context");
        y45.j(o3Var, "adConfiguration");
        y45.j(oi2Var, "requestConfiguration");
        y45.j(obj, "requestTag");
        y45.j(qi2Var, "requestListener");
        String strA = oi2Var.a();
        String strB = oi2Var.b();
        b8 b8Var = this.a;
        Map<String, String> parameters = oi2Var.getParameters();
        b8Var.getClass();
        HashMap mapA = b8.a(parameters);
        o50 o50VarK = o3Var.k();
        String strG = o50VarK.g();
        String strE = o50VarK.e();
        String strA2 = o50VarK.a();
        if (strA2 == null || strA2.length() == 0) {
            strA2 = g;
        }
        Uri.Builder builderAppendQueryParameter = Uri.parse(strA2).buildUpon().appendPath("v2").appendPath("vmap").appendPath(strA).appendQueryParameter("video-category-id", strB);
        this.f.getClass();
        y45.j(context, "context");
        if (!kx1.a(context)) {
            bq1 bq1Var = this.c;
            y45.g(builderAppendQueryParameter);
            bq1Var.getClass();
            y45.j(builderAppendQueryParameter, "builder");
            y45.j("uuid", "key");
            y45.j(builderAppendQueryParameter, "<this>");
            y45.j("uuid", "key");
            if (strG != null && strG.length() != 0) {
                y45.g(builderAppendQueryParameter.appendQueryParameter("uuid", strG));
            }
            this.c.getClass();
            y45.j(builderAppendQueryParameter, "builder");
            y45.j("mauid", "key");
            y45.j(builderAppendQueryParameter, "<this>");
            y45.j("mauid", "key");
            if (strE != null && strE.length() != 0) {
                y45.g(builderAppendQueryParameter.appendQueryParameter("mauid", strE));
            }
        }
        hq hqVar = this.d;
        y45.g(builderAppendQueryParameter);
        hqVar.a(context, builderAppendQueryParameter);
        if (mapA != null) {
            for (Map.Entry entry : mapA.entrySet()) {
                builderAppendQueryParameter.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
            }
        }
        new q50(context, o3Var).a(context, builderAppendQueryParameter);
        k50 k50Var = this.e;
        String string = builderAppendQueryParameter.build().toString();
        y45.i(string, "toString(...)");
        ni2 ni2Var = new ni2(context, o3Var, k50Var.a(context, string), new zi2(qi2Var), oi2Var, this.b, new mi2(), wc1.a());
        ni2Var.b(obj);
        return ni2Var;
    }
}
