package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import defpackage.y45;
import java.util.Map;

public final class h91 implements gk0 {
    final sj0 a;

    public h91(sj0 sj0Var) {
        this.a = sj0Var;
    }

    @Override
    public final void a(String str, Bitmap bitmap) {
        y45.j(str, "url");
        y45.j(bitmap, "bitmap");
        this.a.a(str, bitmap);
    }

    @Override
    public final void a(Map<String, Bitmap> map) {
        y45.j(map, "images");
    }
}
