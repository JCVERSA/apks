package com.google.android.material.circularreveal;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class CircularRevealLinearLayout extends LinearLayout implements c {

    private final b f27914a;

    public CircularRevealLinearLayout(Context context) {
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
        this.f27914a.a();
    }

    @Override
    public void destroyCircularRevealCache() {
        this.f27914a.b();
    }

    @Override
    public void draw(@NonNull Canvas canvas) {
        b bVar = this.f27914a;
        if (bVar != null) {
            bVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f27914a.e();
    }

    @Override
    public int getCircularRevealScrimColor() {
        return this.f27914a.f();
    }

    @Override
    @Nullable
    public c.e getRevealInfo() {
        return this.f27914a.h();
    }

    @Override
    public boolean isOpaque() {
        b bVar = this.f27914a;
        return bVar != null ? bVar.j() : super.isOpaque();
    }

    @Override
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.f27914a.k(drawable);
    }

    @Override
    public void setCircularRevealScrimColor(int i10) {
        this.f27914a.l(i10);
    }

    @Override
    public void setRevealInfo(@Nullable c.e eVar) {
        this.f27914a.m(eVar);
    }

    public CircularRevealLinearLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27914a = new b(this);
    }
}
