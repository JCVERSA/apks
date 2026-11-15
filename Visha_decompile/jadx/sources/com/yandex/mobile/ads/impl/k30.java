package com.yandex.mobile.ads.impl;

import android.net.Uri;
import defpackage.y45;

public final class k30 {
    private final u82 a;

    public k30(lh1 lh1Var) {
        y45.j(lh1Var, "tracker");
        this.a = lh1Var;
    }

    public final void a(Uri uri) {
        y45.j(uri, "uri");
        String queryParameter = uri.getQueryParameter("trackingUrl");
        if (queryParameter == null || queryParameter.length() <= 0) {
            return;
        }
        this.a.a(queryParameter);
    }
}
