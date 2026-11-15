package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import defpackage.y45;
import java.util.Map;

public final class zj0 {
    public static boolean a(xj0 xj0Var, Map map) {
        y45.j(xj0Var, "imageValue");
        y45.j(map, "images");
        Bitmap bitmap = (Bitmap) map.get(xj0Var.f());
        return (bitmap != null && bitmap.getWidth() > 1 && bitmap.getHeight() > 1) || !xj0Var.b();
    }
}
