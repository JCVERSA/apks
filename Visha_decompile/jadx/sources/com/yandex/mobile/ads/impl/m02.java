package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.widget.ImageView;
import defpackage.y45;

public final class m02 {
    private final p02 a = new p02();
    private final si b = new si();
    private final bl c = new bl();
    private o02 d;

    public final void a(ImageView imageView) {
        y45.j(imageView, "view");
        imageView.removeOnLayoutChangeListener(this.d);
    }

    public final void a(Bitmap bitmap, ImageView imageView, xj0 xj0Var) {
        y45.j(imageView, "view");
        y45.j(xj0Var, "imageValue");
        y45.j(bitmap, "originalBitmap");
        o02 o02Var = new o02(this.b, this.c, this.a, xj0Var, bitmap);
        this.d = o02Var;
        imageView.addOnLayoutChangeListener(o02Var);
        if (imageView.getLayoutParams().width == -1 || imageView.getLayoutParams().height == -1 || imageView.getLayoutParams().width == -2 || imageView.getLayoutParams().height == -2) {
            imageView.setImageBitmap(bitmap);
        }
    }
}
