package com.yandex.mobile.ads.impl;

import android.net.Uri;
import defpackage.y45;
import java.util.List;

public final class rn0 {
    private static final List<String> a = defpackage.y71.n("adsdk.yandex.ru", "mobile.yandexadexchange.net");

    public static boolean a(Uri uri) {
        y45.j(uri, "uri");
        return defpackage.i81.d0(a, uri.getHost());
    }
}
