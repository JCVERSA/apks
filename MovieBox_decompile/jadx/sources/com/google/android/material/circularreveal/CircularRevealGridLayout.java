package com.google.android.material.circularreveal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.GridLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class CircularRevealGridLayout extends GridLayout implements c {

    private final b f27913a;

    public CircularRevealGridLayout(Context context) {
        this(context, null);
    }

    @Override
    public void actualDraw(Canvas canvas) {
        super.draw(canvas);
    }

    @Override
    public boolean actualIsOpaque() {
        return super.isOpaque();
    }

    @Override
    public void buildCircularRevealCache() {
        this.f27913a.a();
    }

    @Override
    public void destroyCircularRevealCache() {
        this.f27913a.b();
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        b bVar = this.f27913a;
        if (bVar != null) {
            bVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f27913a.e();
    }

    @Override
    public int getCircularRevealScrimColor() {
        return this.f27913a.f();
    }

    @Override
    @Nullable
    public c.e getRevealInfo() {
        return this.f27913a.h();
    }

    @Override
    public boolean isOpaque() {
        b bVar = this.f27913a;
        return bVar != null ? bVar.j() : super.isOpaque();
    }

    @Override
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.f27913a.k(drawable);
    }

    @Override
    public void setCircularRevealScrimColor(int i10) {
        this.f27913a.l(i10);
    }

    @Override
    public void setRevealInfo(@Nullable c.e eVar) {
        this.f27913a.m(eVar);
    }

    public CircularRevealGridLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27913a = new b(this);
    }
}
