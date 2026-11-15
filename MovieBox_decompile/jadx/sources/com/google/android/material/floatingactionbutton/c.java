package com.google.android.material.floatingactionbutton;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import cb.n;
import cb.o;

class c extends Drawable {

    private final Paint f28164b;

    float f28170h;

    private int f28171i;

    private int f28172j;

    private int f28173k;

    private int f28174l;

    private int f28175m;

    private n f28177o;

    private ColorStateList f28178p;

    private final o f28163a = o.k();

    private final Path f28165c = new Path();

    private final Rect f28166d = new Rect();

    private final RectF f28167e = new RectF();

    private final RectF f28168f = new RectF();

    private final b f28169g = new b();

    private boolean f28176n = true;

    private class b extends Drawable.ConstantState {
        private b() {
        }

        @Override
        public int getChangingConfigurations() {
            return 0;
        }

        @Override
        public Drawable newDrawable() {
            return c.this;
        }
    }

    c(n nVar) {
        this.f28177o = nVar;
        Paint paint = new Paint(1);
        this.f28164b = paint;
        paint.setStyle(Paint.Style.STROKE);
    }

    private Shader a() {
        Rect rect = this.f28166d;
        copyBounds(rect);
        float fHeight = this.f28170h / rect.height();
        return new LinearGradient(0.0f, rect.top, 0.0f, rect.bottom, new int[]{z0.b.k(this.f28171i, this.f28175m), z0.b.k(this.f28172j, this.f28175m), z0.b.k(z0.b.p(this.f28172j, 0), this.f28175m), z0.b.k(z0.b.p(this.f28174l, 0), this.f28175m), z0.b.k(this.f28174l, this.f28175m), z0.b.k(this.f28173k, this.f28175m)}, new float[]{0.0f, fHeight, 0.5f, 0.5f, 1.0f - fHeight, 1.0f}, Shader.TileMode.CLAMP);
    }

    protected RectF b() {
        this.f28168f.set(getBounds());
        return this.f28168f;
    }

    void c(ColorStateList colorStateList) {
        if (colorStateList != null) {
            this.f28175m = colorStateList.getColorForState(getState(), this.f28175m);
        }
        this.f28178p = colorStateList;
        this.f28176n = true;
        invalidateSelf();
    }

    public void d(float f10) {
        if (this.f28170h != f10) {
            this.f28170h = f10;
            this.f28164b.setStrokeWidth(f10 * 1.3333f);
            this.f28176n = true;
            invalidateSelf();
        }
    }

    @Override
    public void draw(Canvas canvas) {
        if (this.f28176n) {
            this.f28164b.setShader(a());
            this.f28176n = false;
        }
        float strokeWidth = this.f28164b.getStrokeWidth() / 2.0f;
        copyBounds(this.f28166d);
        this.f28167e.set(this.f28166d);
        float fMin = Math.min(this.f28177o.r().a(b()), this.f28167e.width() / 2.0f);
        if (this.f28177o.u(b())) {
            this.f28167e.inset(strokeWidth, strokeWidth);
            canvas.drawRoundRect(this.f28167e, fMin, fMin, this.f28164b);
        }
    }

    void e(int i10, int i11, int i12, int i13) {
        this.f28171i = i10;
        this.f28172j = i11;
        this.f28173k = i12;
        this.f28174l = i13;
    }

    public void f(n nVar) {
        this.f28177o = nVar;
        invalidateSelf();
    }

    @Override
    public Drawable.ConstantState getConstantState() {
        return this.f28169g;
    }

    @Override
    public int getOpacity() {
        return this.f28170h > 0.0f ? -3 : -2;
    }

    @Override
    public void getOutline(Outline outline) {
        if (this.f28177o.u(b())) {
            outline.setRoundRect(getBounds(), this.f28177o.r().a(b()));
        } else {
            copyBounds(this.f28166d);
            this.f28167e.set(this.f28166d);
            this.f28163a.d(this.f28177o, 1.0f, this.f28167e, this.f28165c);
            com.google.android.material.drawable.d.l(outline, this.f28165c);
        }
    }

    @Override
    public boolean getPadding(Rect rect) {
        if (!this.f28177o.u(b())) {
            return true;
        }
        int iRound = Math.round(this.f28170h);
        rect.set(iRound, iRound, iRound, iRound);
        return true;
    }

    @Override
    public boolean isStateful() {
        ColorStateList colorStateList = this.f28178p;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override
    protected void onBoundsChange(Rect rect) {
        this.f28176n = true;
    }

    @Override
    protected boolean onStateChange(int[] iArr) {
        int colorForState;
        ColorStateList colorStateList = this.f28178p;
        if (colorStateList != null && (colorForState = colorStateList.getColorForState(iArr, this.f28175m)) != this.f28175m) {
            this.f28176n = true;
            this.f28175m = colorForState;
        }
        if (this.f28176n) {
            invalidateSelf();
        }
        return this.f28176n;
    }

    @Override
    public void setAlpha(int i10) {
        this.f28164b.setAlpha(i10);
        invalidateSelf();
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.f28164b.setColorFilter(colorFilter);
        invalidateSelf();
    }
}
