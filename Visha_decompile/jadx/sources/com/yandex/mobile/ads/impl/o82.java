package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.util.LruCache;
import defpackage.y45;

public final class o82 implements id1.c {
    private final LruCache<String, Bitmap> a;
    private final hj0 b;

    public o82(jd1 jd1Var, hj0 hj0Var) {
        y45.j(jd1Var, "bitmapLruCache");
        y45.j(hj0Var, "imageCacheKeyGenerator");
        this.a = jd1Var;
        this.b = hj0Var;
    }

    public final Bitmap a(String str) {
        y45.j(str, "url");
        this.b.getClass();
        return this.a.get(hj0.a(str));
    }

    @Override
    public final void a(String str, Bitmap bitmap) {
        y45.j(str, "url");
        y45.j(bitmap, "bitmap");
        this.b.getClass();
        this.a.put(hj0.a(str), bitmap);
    }
}
