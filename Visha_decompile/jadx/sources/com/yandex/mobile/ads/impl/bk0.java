package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import defpackage.y45;

public final class bk0 {
    private final sj0 a;
    private final ul b;

    public bk0(sj0 sj0Var) {
        this(sj0Var, new ul());
    }

    public final boolean a(Drawable drawable, xj0 xj0Var) {
        y45.j(xj0Var, "imageValue");
        Bitmap bitmapB = this.a.b(xj0Var);
        if (bitmapB == null) {
            bitmapB = this.a.a(xj0Var);
        }
        if (drawable == null || bitmapB == null) {
            return false;
        }
        this.b.getClass();
        y45.j(drawable, "drawable");
        return (drawable instanceof BitmapDrawable ? new vl() : new d40(new mt1(), new wl())).a(drawable, bitmapB);
    }

    public bk0(sj0 sj0Var, ul ulVar) {
        y45.j(sj0Var, "imageProvider");
        y45.j(ulVar, "bitmapComparatorFactory");
        this.a = sj0Var;
        this.b = ulVar;
    }
}
