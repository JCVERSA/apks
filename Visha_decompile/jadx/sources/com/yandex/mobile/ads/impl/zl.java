package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.internal.view.SupportMenu;
import defpackage.y45;

@SuppressLint({"ViewConstructor"})
public final class zl extends FrameLayout {
    private final o10 a;
    private final su0 b;
    private final int c;
    private final Paint d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zl(Context context, o10 o10Var, su0 su0Var) {
        super(context);
        y45.j(context, "context");
        y45.j(o10Var, "dimensionConverter");
        y45.j(su0Var, "emptySizeMeasureSpecProvider");
        this.a = o10Var;
        this.b = su0Var;
        o10Var.getClass();
        this.c = o10.a(context, 0.5f);
        this.d = new Paint();
        a(context);
    }

    private final void a(Context context) {
        this.a.getClass();
        int iA = o10.a(context, 1.0f);
        this.d.setStyle(Paint.Style.STROKE);
        this.d.setStrokeWidth(iA);
        this.d.setColor(SupportMenu.CATEGORY_MASK);
        setClickable(false);
        setFocusable(false);
        setWillNotDraw(false);
    }

    @Override
    public final void onDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        super.onDraw(canvas);
        float f = this.c;
        canvas.drawRect(f, f, getWidth() - this.c, getHeight() - this.c, this.d);
    }

    @Override
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        Object parent = getParent();
        if (!(parent instanceof View)) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        View view = (View) parent;
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        setLeft(0);
        setTop(0);
        setRight(measuredWidth);
        setBottom(measuredHeight);
        super.onLayout(z, 0, 0, measuredWidth, measuredHeight);
    }

    @Override
    public final void onMeasure(int i, int i2) {
        su0.a aVarA = this.b.a(i, i2);
        super.onMeasure(aVarA.a, aVarA.b);
    }

    public final void setColor(int i) {
        if (this.d.getColor() != i) {
            this.d.setColor(i);
            requestLayout();
        }
    }
}
