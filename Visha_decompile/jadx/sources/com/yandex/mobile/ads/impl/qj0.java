package com.yandex.mobile.ads.impl;

import android.graphics.Bitmap;
import defpackage.y45;
import kotlin.Result;

public final class qj0 {
    private final bl1 a;
    private final cl1 b;
    private final yl c;

    public qj0() {
        this(new bl1(), new cl1(), new yl());
    }

    public final Bitmap a(xj0 xj0Var) {
        Object objM279constructorimpl;
        Bitmap bitmap;
        y45.j(xj0Var, "imageValue");
        String strC = xj0Var.c();
        if (strC == null) {
            return null;
        }
        this.a.getClass();
        Bitmap bitmapA = bl1.a(strC);
        if (bitmapA != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(this.b.a(bitmapA, xj0Var));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
            }
            if (Result.m285isFailureimpl(objM279constructorimpl)) {
                objM279constructorimpl = null;
            }
            bitmap = (Bitmap) objM279constructorimpl;
        } else {
            bitmap = null;
        }
        if (bitmap == null) {
            return null;
        }
        this.c.getClass();
        return yl.a(bitmap, 1.0d);
    }

    public qj0(bl1 bl1Var, cl1 cl1Var, yl ylVar) {
        y45.j(bl1Var, "previewBitmapCreator");
        y45.j(cl1Var, "previewBitmapScaler");
        y45.j(ylVar, "blurredBitmapProvider");
        this.a = bl1Var;
        this.b = cl1Var;
        this.c = ylVar;
    }
}
