package com.yandex.mobile.ads.impl;

import android.graphics.RectF;
import defpackage.y45;

public final class n02 {
    public static final float a(j02 j02Var, RectF rectF, RectF rectF2) {
        y45.j(j02Var, "<this>");
        y45.j(rectF, "view");
        y45.j(rectF2, "image");
        float fHeight = rectF.height();
        float fWidth = rectF.width();
        float fHeight2 = rectF2.height();
        float fWidth2 = rectF2.width();
        if (fHeight == 0.0f || fWidth == 0.0f || fHeight2 == 0.0f || fWidth2 == 0.0f) {
            return Float.MAX_VALUE;
        }
        float fMin = Math.min(1.0f, fWidth2 / fHeight2 > fWidth / fHeight ? fHeight / fHeight2 : fWidth / fWidth2);
        if (fWidth < ((int) (j02Var.c() * fMin)) || fHeight < ((int) (j02Var.b() * fMin))) {
            return Float.MAX_VALUE;
        }
        return Math.abs(fHeight - (j02Var.b() * fMin)) + Math.abs(fWidth - (j02Var.c() * fMin));
    }
}
