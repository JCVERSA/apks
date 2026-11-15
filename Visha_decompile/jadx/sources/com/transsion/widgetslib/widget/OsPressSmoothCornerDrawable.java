package com.transsion.widgetslib.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.annotation.NonNull;
import com.transsion.widgetslib.R;
import defpackage.olb;

public class OsPressSmoothCornerDrawable extends View {
    public final Context b;
    public int c;
    public Paint d;
    public final RectF e;
    public ViewPropertyAnimator f;
    public boolean g;
    public float h;
    public final int i;
    public final int j;
    public float k;

    public OsPressSmoothCornerDrawable(Context context) {
        this(context, null);
    }

    public final void b(Canvas canvas) {
        if (!this.g) {
            int height = getHeight();
            int i = this.i;
            int i2 = height - i;
            this.e.set(this.k, i, getWidth() - this.k, i2);
            float f = i2 - (i >> 1);
            canvas.drawRoundRect(this.e, f, f, this.d);
            return;
        }
        int measuredHeight = getMeasuredHeight() - this.j;
        int measuredWidth = getMeasuredWidth();
        int i3 = this.j;
        this.e.set(i3, i3, measuredWidth - i3, measuredHeight);
        RectF rectF = this.e;
        float f2 = this.h;
        canvas.drawRoundRect(rectF, f2, f2, this.d);
    }

    public final void c() {
        Paint paint = new Paint();
        this.d = paint;
        paint.setAntiAlias(true);
        this.d.setStyle(Paint.Style.FILL);
        int iM = olb.m(this.b, R.attr.os_fill_weaker, R.color.os_fill_weaker_xos);
        this.c = iM;
        this.d.setColor(iM);
        setBackground(null);
        setAlpha(0.0f);
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        super.draw(canvas);
        b(canvas);
    }

    public void hideWithFadeAnimation() {
        ViewPropertyAnimator viewPropertyAnimator = this.f;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            this.f = null;
        }
        if (getAlpha() - 0.0f > 0.001f) {
            setAlpha(1.0f);
        }
        this.f = animate().alpha(0.0f).setDuration(200L).withEndAction(new Runnable() {
            @Override
            public void run() {
                OsPressSmoothCornerDrawable.this.f = null;
            }
        });
    }

    public void setBackgroundLeftRightMargin(float f) {
        if (f < 0.0f) {
            f = 0.0f;
        }
        this.k = f;
        invalidate();
    }

    public void setCornerRadius(float f) {
        this.h = f;
        this.g = true;
    }

    public void setEnableDefRoundCorner(boolean z) {
        this.g = z;
    }

    public void setFillColor(int i) {
        this.d.setColor(i);
        invalidate();
    }

    public void showWithFadeAnimation() {
        ViewPropertyAnimator viewPropertyAnimator = this.f;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            this.f = null;
        }
        this.f = animate().alpha(1.0f).setDuration(100L).withEndAction(new Runnable() {
            @Override
            public void run() {
                OsPressSmoothCornerDrawable.this.f = null;
            }
        });
    }

    public OsPressSmoothCornerDrawable(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public OsPressSmoothCornerDrawable(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public OsPressSmoothCornerDrawable(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.d = new Paint(1);
        this.e = new RectF();
        this.g = false;
        this.h = 0.0f;
        this.k = 0.0f;
        this.b = context;
        c();
        this.i = olb.h(context, 4);
        this.j = olb.h(context, 0);
    }
}
