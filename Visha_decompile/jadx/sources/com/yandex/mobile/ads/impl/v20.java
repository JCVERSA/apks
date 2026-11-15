package com.yandex.mobile.ads.impl;

import android.net.Uri;
import android.view.View;
import defpackage.f1a;
import defpackage.y45;
import java.util.Map;

public final class v20 {
    private final uo a;
    private vo b;

    public v20(uo uoVar) {
        y45.j(uoVar, "mainClickConnector");
        this.a = uoVar;
    }

    public final void a(Uri uri, View view) {
        Integer numR;
        Map mapL;
        y45.j(uri, "uri");
        y45.j(view, "clickView");
        String queryParameter = uri.getQueryParameter("assetName");
        if (queryParameter != null) {
            String queryParameter2 = uri.getQueryParameter("position");
            if (queryParameter2 != null) {
                y45.g(queryParameter2);
                numR = f1a.r(queryParameter2);
            } else {
                numR = null;
            }
            if (numR == null) {
                this.a.a(view, queryParameter);
                return;
            }
            vo voVar = this.b;
            if (voVar == null || (mapL = voVar.a()) == null) {
                mapL = kotlin.collections.a.l();
            }
            uo uoVar = (uo) mapL.get(numR);
            if (uoVar != null) {
                uoVar.a(view, queryParameter);
            }
        }
    }

    public final void a(vo voVar) {
        this.b = voVar;
    }
}
