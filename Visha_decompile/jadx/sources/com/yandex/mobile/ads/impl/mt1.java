package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import defpackage.y45;

public final class mt1 {
    private final wl a;

    public mt1() {
        this(new wl());
    }

    public final Bitmap a(Drawable drawable) {
        Bitmap bitmapCreateBitmap;
        y45.j(drawable, "drawable");
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            wl wlVar = this.a;
            Bitmap.Config config = Bitmap.Config.ARGB_8888;
            wlVar.getClass();
            y45.j(config, "config");
            bitmapCreateBitmap = Bitmap.createBitmap(1, 1, config);
            y45.i(bitmapCreateBitmap, "createBitmap(...)");
        } else {
            wl wlVar2 = this.a;
            Bitmap.Config config2 = Bitmap.Config.ARGB_8888;
            wlVar2.getClass();
            y45.j(config2, "config");
            bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, config2);
            y45.i(bitmapCreateBitmap, "createBitmap(...)");
        }
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public mt1(wl wlVar) {
        y45.j(wlVar, "bitmapProvider");
        this.a = wlVar;
    }
}
