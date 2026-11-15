package com.yandex.mobile.ads.impl;

import android.widget.ImageView;
import defpackage.y45;

public final class jz1 extends oj0 {
    private final hj0 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jz1(iq1 iq1Var, id1.b bVar, hj0 hj0Var) {
        super(iq1Var, bVar);
        y45.j(iq1Var, "queue");
        y45.j(bVar, "imageCache");
        y45.j(hj0Var, "imageCacheKeyGenerator");
        this.g = hj0Var;
    }

    @Override
    public final String a(String str, int i, int i2, ImageView.ScaleType scaleType) {
        y45.j(str, "url");
        y45.j(scaleType, "scaleType");
        this.g.getClass();
        return hj0.b(str, scaleType);
    }
}
