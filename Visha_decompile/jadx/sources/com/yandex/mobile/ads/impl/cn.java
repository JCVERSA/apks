package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.Bitmap;
import defpackage.y45;

public final class cn {
    private final Context a;

    /* JADX WARN: Illegal instructions before constructor call */
    public cn(Context context) {
        Context applicationContext = context.getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        this(context, applicationContext);
    }

    public final Bitmap a(xj0 xj0Var) {
        y45.j(xj0Var, "imageValue");
        o82 o82VarC = id1.c.a(this.a).c();
        String strF = xj0Var.f();
        Bitmap bitmapA = o82VarC.a(strF);
        if (bitmapA == null || bitmapA.getWidth() != 1 || bitmapA.getHeight() != 1) {
            return bitmapA;
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapA, xj0Var.g(), xj0Var.a(), false);
        y45.i(bitmapCreateScaledBitmap, "createScaledBitmap(...)");
        o82VarC.a(strF, bitmapCreateScaledBitmap);
        return bitmapCreateScaledBitmap;
    }

    public cn(Context context, Context context2) {
        y45.j(context, "context");
        y45.j(context2, "appContext");
        this.a = context2;
    }
}
