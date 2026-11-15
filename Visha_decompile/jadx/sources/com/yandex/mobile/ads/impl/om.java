package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import defpackage.y45;

@SuppressLint({"ViewConstructor"})
public final class om extends View {
    private final float a;
    private final float b;
    private final Paint c;
    private final Paint d;
    private final Paint e;
    private float f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public om(Context context, o10 o10Var) {
        super(context);
        y45.j(context, "context");
        y45.j(o10Var, "dimensionConverter");
        o10Var.getClass();
        this.a = o10.a(context, 34.0f);
        float fA = o10.a(context, 3.0f);
        this.b = fA;
        float fA2 = o10.a(context, 20.0f);
        Paint paint = new Paint();
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        this.c = paint;
        Paint paint2 = new Paint();
        paint2.setStyle(Paint.Style.STROKE);
        paint2.setStrokeWidth(fA);
        paint2.setAntiAlias(true);
        this.d = paint2;
        Paint paint3 = new Paint();
        paint3.setStyle(style);
        paint3.setTextSize(fA2);
        paint3.setTextAlign(Paint.Align.CENTER);
        this.e = paint3;
        this.f = 40.0f;
        a();
    }

    private final void a() {
        this.d.setColor(wh2.a(SupportMenu.CATEGORY_MASK, this.f));
        this.c.setColor(wh2.a(-1, this.f));
        this.e.setColor(wh2.a(SupportMenu.CATEGORY_MASK, this.f));
    }

    @Override
    public final void onDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        super.onDraw(canvas);
        float f = 2;
        float f2 = this.a / f;
        canvas.drawCircle(f2, f2, f2, this.c);
        canvas.drawCircle(f2, f2, f2 - (this.b / f), this.d);
        float f3 = this.a / f;
        canvas.drawText("!", f3, f3 - ((this.e.ascent() + this.e.descent()) / f), this.e);
    }

    @Override
    public final void onMeasure(int i, int i2) {
        int i3 = (int) this.a;
        setMeasuredDimension(i3, i3);
    }

    @Override
    public void setSelected(boolean z) {
        super.setSelected(z);
        this.f = z ? 0.0f : 40.0f;
        a();
        invalidate();
    }
}
