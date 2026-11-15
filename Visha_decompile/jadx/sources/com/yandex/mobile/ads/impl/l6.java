package com.yandex.mobile.ads.impl;

import android.net.Uri;
import defpackage.y45;

public final class l6 implements l20 {
    private final kz1 a;

    public l6(kz1 kz1Var) {
        y45.j(kz1Var, "skipAdController");
        this.a = kz1Var;
    }

    @Override
    public final boolean a(Uri uri) {
        y45.j(uri, "uri");
        if (!y45.e(uri.getHost(), "showNextAd")) {
            return false;
        }
        this.a.a();
        return true;
    }
}
