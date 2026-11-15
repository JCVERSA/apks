package com.google.android.material.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;

public class h extends Drawable {

    private final Drawable f28396a;

    private final Drawable f28397b;

    private final float[] f28398c;

    private float f28399d;

    public h(Drawable drawable, Drawable drawable2) {
        this.f28396a = drawable.getConstantState().newDrawable().mutate();
        Drawable drawableMutate = drawable2.getConstantState().newDrawable().mutate();
        this.f28397b = drawableMutate;
        drawableMutate.setAlpha(0);
        this.f28398c = new float[2];
    }

    public void a(float f10) {
        if (this.f28399d != f10) {
            this.f28399d = f10;
            j.a(f10, this.f28398c);
            this.f28396a.setAlpha((int) (this.f28398c[0] * 255.0f));
            this.f28397b.setAlpha((int) (this.f28398c[1] * 255.0f));
            invalidateSelf();
        }
    }

    @Override
    public void draw(Canvas canvas) {
        this.f28396a.draw(canvas);
        this.f28397b.draw(canvas);
    }

    @Override
    public int getIntrinsicHeight() {
        return Math.max(this.f28396a.getIntrinsicHeight(), this.f28397b.getIntrinsicHeight());
    }

    @Override
    public int getIntrinsicWidth() {
        return Math.max(this.f28396a.getIntrinsicWidth(), this.f28397b.getIntrinsicWidth());
    }

    @Override
    public int getMinimumHeight() {
        return Math.max(this.f28396a.getMinimumHeight(), this.f28397b.getMinimumHeight());
    }

    @Override
    public int getMinimumWidth() {
        return Math.max(this.f28396a.getMinimumWidth(), this.f28397b.getMinimumWidth());
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    @Override
    public boolean isStateful() {
        return this.f28396a.isStateful() || this.f28397b.isStateful();
    }

    @Override
    public void setAlpha(int i10) {
        if (this.f28399d <= 0.5f) {
            this.f28396a.setAlpha(i10);
            this.f28397b.setAlpha(0);
        } else {
            this.f28396a.setAlpha(0);
            this.f28397b.setAlpha(i10);
        }
        invalidateSelf();
    }

    @Override
    public void setBounds(int i10, int i11, int i12, int i13) {
        super.setBounds(i10, i11, i12, i13);
        this.f28396a.setBounds(i10, i11, i12, i13);
        this.f28397b.setBounds(i10, i11, i12, i13);
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.f28396a.setColorFilter(colorFilter);
        this.f28397b.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override
    public boolean setState(int[] iArr) {
        return this.f28396a.setState(iArr) || this.f28397b.setState(iArr);
    }
}
