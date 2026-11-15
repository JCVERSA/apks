package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.graphics.drawable.shapes.RoundRectShape;
import android.util.TypedValue;
import defpackage.iv9;
import defpackage.s86;
import defpackage.y45;
import defpackage.zfb;

public final class v30 {
    private final o10 a = new o10();

    public final LayerDrawable a(Context context, int i, int i2) {
        y45.j(context, "context");
        this.a.getClass();
        int iA = o10.a(context, 6.0f);
        this.a.getClass();
        y45.j(context, "context");
        int iC = s86.c(TypedValue.applyDimension(1, 4.0f, context.getResources().getDisplayMetrics()));
        this.a.getClass();
        y45.j(context, "context");
        int iC2 = s86.c(TypedValue.applyDimension(1, 3.0f, context.getResources().getDisplayMetrics()));
        this.a.getClass();
        y45.j(context, "context");
        int iC3 = s86.c(TypedValue.applyDimension(1, 12.0f, context.getResources().getDisplayMetrics()));
        int i3 = ((i2 + 1) * iC) + (iA * i2);
        float f = iC3;
        RectF rectF = new RectF(0.0f, 0.0f, i3, f);
        float[] fArr = new float[8];
        int i4 = 0;
        for (int i5 = 0; i5 < 8; i5++) {
            fArr[i5] = f;
        }
        ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(fArr, rectF, null));
        shapeDrawable.setIntrinsicWidth(i3);
        shapeDrawable.setIntrinsicHeight(iC3);
        shapeDrawable.getPaint().setColor(-16777216);
        shapeDrawable.setAlpha(102);
        ShapeDrawable[] shapeDrawableArr = new ShapeDrawable[i2];
        for (int i6 = 0; i6 < i2; i6++) {
            ShapeDrawable shapeDrawable2 = new ShapeDrawable(new OvalShape());
            shapeDrawable2.setIntrinsicHeight(iA);
            shapeDrawable2.setIntrinsicWidth(iA);
            shapeDrawable2.getPaint().setColor(-1);
            if (i6 != i) {
                shapeDrawable2.setAlpha(102);
            }
            zfb zfbVar = zfb.a;
            shapeDrawableArr[i6] = shapeDrawable2;
        }
        iv9 iv9Var = new iv9(2);
        iv9Var.a(shapeDrawable);
        iv9Var.b(shapeDrawableArr);
        LayerDrawable layerDrawable = new LayerDrawable((Drawable[]) iv9Var.d(new ShapeDrawable[iv9Var.c()]));
        while (i4 < i2) {
            int i7 = iC + iA;
            int i8 = i4 + 1;
            layerDrawable.setLayerInset(i8, (i7 * i4) + iC, iC2, i3 - (i7 * i8), iC2);
            i4 = i8;
        }
        return layerDrawable;
    }
}
