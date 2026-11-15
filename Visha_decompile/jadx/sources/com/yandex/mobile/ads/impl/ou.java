package com.yandex.mobile.ads.impl;

import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.view.View;
import defpackage.y45;

public final class ou {
    private final View a;
    private final RectF b;
    private final Path c;
    private final float[] d;

    public ou(View view, float f, float f2, float f3, float f4) {
        this(view, f, f2, f3, f4, new RectF(), new Path());
    }

    public final void a(Canvas canvas) {
        y45.j(canvas, "canvas");
        if (this.d == null || this.c.isEmpty()) {
            return;
        }
        canvas.clipPath(this.c);
    }

    public ou(View view, float f, float f2, float f3, float f4, RectF rectF, Path path) {
        y45.j(view, "roundView");
        y45.j(rectF, "clipRect");
        y45.j(path, "clipPath");
        this.a = view;
        this.b = rectF;
        this.c = path;
        this.d = a(f, f2, f3, f4);
    }

    private static float[] a(float f, float f2, float f3, float f4) {
        if (f > 0.0f || f2 > 0.0f || f3 > 0.0f || f4 > 0.0f) {
            return new float[]{f, f, f2, f2, f3, f3, f4, f4};
        }
        return null;
    }

    public final void a() {
        if (this.d != null) {
            int measuredWidth = this.a.getMeasuredWidth();
            int measuredHeight = this.a.getMeasuredHeight();
            int paddingLeft = this.a.getPaddingLeft();
            int paddingTop = this.a.getPaddingTop();
            int paddingRight = measuredWidth - this.a.getPaddingRight();
            int paddingBottom = measuredHeight - this.a.getPaddingBottom();
            if (paddingLeft >= paddingRight || paddingTop >= paddingBottom) {
                return;
            }
            this.b.set(paddingLeft, paddingTop, paddingRight, paddingBottom);
            this.c.reset();
            this.c.addRoundRect(this.b, this.d, Path.Direction.CW);
        }
    }
}
