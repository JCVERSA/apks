package com.yandex.mobile.ads.impl;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.style.ImageSpan;
import defpackage.s86;
import defpackage.y45;
import java.lang.ref.WeakReference;

public final class ad extends ImageSpan {
    private final int a;
    private WeakReference<Drawable> b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ad(Drawable drawable) {
        super(drawable);
        y45.j(drawable, "drawable");
        this.a = -1;
    }

    @Override
    public final void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        y45.j(canvas, "canvas");
        y45.j(paint, "paint");
        if (this.a != -1) {
            super.draw(canvas, charSequence, i, i2, f, i3, i4, i5, paint);
            return;
        }
        WeakReference<Drawable> weakReference = this.b;
        Drawable drawable = weakReference != null ? weakReference.get() : null;
        if (drawable == null) {
            drawable = getDrawable();
            this.b = new WeakReference<>(drawable);
            y45.g(drawable);
        }
        canvas.save();
        canvas.translate(f, s86.c(((i3 + i5) / 2.0f) - (drawable.getBounds().height() / 2.0f)));
        drawable.draw(canvas);
        canvas.restore();
    }

    @Override
    public final int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        y45.j(paint, "paint");
        WeakReference<Drawable> weakReference = this.b;
        Drawable drawable = weakReference != null ? weakReference.get() : null;
        if (drawable == null) {
            drawable = getDrawable();
            this.b = new WeakReference<>(drawable);
            y45.g(drawable);
        }
        Rect bounds = drawable.getBounds();
        y45.i(bounds, "getBounds(...)");
        if (fontMetricsInt != null) {
            Paint.FontMetricsInt fontMetricsInt2 = paint.getFontMetricsInt();
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
        }
        return bounds.right;
    }
}
