package com.yandex.mobile.ads.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import defpackage.y45;

public final class n8 extends View {
    private final pv a;
    private final Paint b;
    private final Paint c;
    private final Paint d;
    private int e;
    private int f;
    private int g;
    private float h;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public n8(Context context) {
        this(context, null, 6, 0);
        y45.j(context, "context");
    }

    private final void a() {
        this.b.setColor(this.e);
        this.c.setColor(this.g);
        this.d.setColor(this.g);
    }

    @Override
    public final void onConfigurationChanged(Configuration configuration) {
        y45.j(configuration, "newConfig");
        super.onConfigurationChanged(configuration);
        this.g = this.a.a() ? -7829368 : -1;
        a();
        invalidate();
    }

    @Override
    public final void onDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        super.onDraw(canvas);
        canvas.drawColor(0);
        float fMin = Math.min(getWidth(), getHeight());
        float f = fMin / 2.0f;
        canvas.drawCircle(f, f, f, this.b);
        float f2 = fMin / 5.0f;
        float f3 = f - f2;
        float f4 = f2 + f;
        canvas.drawLine(f3, f3, f4, f4, this.c);
        canvas.drawLine(f3, f4, f4, f3, this.c);
        float f5 = this.h;
        if (f5 > 0.0f) {
            this.d.setStrokeWidth(f5);
            canvas.drawCircle(f, f, f - this.h, this.d);
        }
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        y45.j(motionEvent, NotificationCompat.CATEGORY_EVENT);
        if (motionEvent.getAction() == 0) {
            a(j8.a());
            a();
            invalidate();
        } else if (1 == motionEvent.getAction()) {
            a(this.f);
            a();
            invalidate();
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override
    public void setBackgroundColor(int i) {
        this.f = i;
        a(i);
        a();
        invalidate();
    }

    public final void setBorderWidth(float f) {
        this.h = f;
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public n8(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 4, 0);
        y45.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n8(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.a = new pv(context);
        this.e = k8.a();
        this.f = k8.a();
        this.g = -1;
        this.h = -1.0f;
        if (attributeSet == null || i == 0) {
            int iA = k8.a();
            this.f = iA;
            a(iA);
        }
        Paint paint = new Paint(0);
        paint.setAntiAlias(true);
        paint.setStyle(Paint.Style.FILL);
        this.b = paint;
        Paint paint2 = new Paint(0);
        paint2.setAntiAlias(true);
        paint2.setStrokeWidth(2.0f);
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        this.c = paint2;
        Paint paint3 = new Paint(0);
        paint3.setAntiAlias(true);
        paint3.setStyle(style);
        this.d = paint3;
        a();
    }

    private final void a(int i) {
        int iA = wh2.a(i, 20.0f);
        this.e = iA;
        float[] fArr = new float[3];
        Color.colorToHSV(iA, fArr);
        if (fArr[2] < 0.5f) {
            this.g = this.a.a() ? -7829368 : -1;
        } else {
            this.g = -16777216;
        }
    }

    public n8(Context context, AttributeSet attributeSet, int i, int i2) {
        this(context, (i & 2) != 0 ? null : attributeSet, 0);
    }
}
