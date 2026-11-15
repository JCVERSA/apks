package com.yandex.mobile.ads.impl;

import android.widget.ImageView;
import defpackage.y45;

public final class hj0 {
    private static String a(String str, ImageView.ScaleType scaleType) {
        return "#S" + scaleType.ordinal() + str;
    }

    public static String b(String str, ImageView.ScaleType scaleType) {
        y45.j(str, "url");
        y45.j(scaleType, "scaleType");
        return a(str, scaleType);
    }

    public static String a(String str) {
        y45.j(str, "url");
        return a(str, ImageView.ScaleType.CENTER_INSIDE);
    }
}
