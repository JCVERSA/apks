package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import defpackage.y45;

public final class vl implements tl<BitmapDrawable> {
    @Override
    public final boolean a(Drawable drawable, Bitmap bitmap) {
        BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
        y45.j(bitmapDrawable, "drawable");
        y45.j(bitmap, "bitmap");
        return y45.e(bitmap, bitmapDrawable.getBitmap());
    }
}
