package com.google.android.material.circularreveal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class CircularRevealFrameLayout extends FrameLayout implements c {

    private final b f27912a;

    public CircularRevealFrameLayout(@NonNull Context context) {
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
        this.f27912a.a();
    }

    @Override
    public void destroyCircularRevealCache() {
        this.f27912a.b();
    }

    @Override
    @SuppressLint({"MissingSuperCall"})
    public void draw(@NonNull Canvas canvas) {
        b bVar = this.f27912a;
        if (bVar != null) {
            bVar.c(canvas);
        } else {
            super.draw(canvas);
        }
    }

    @Nullable
    public Drawable getCircularRevealOverlayDrawable() {
        return this.f27912a.e();
    }

    @Override
    public int getCircularRevealScrimColor() {
        return this.f27912a.f();
    }

    @Override
    @Nullable
    public c.e getRevealInfo() {
        return this.f27912a.h();
    }

    @Override
    public boolean isOpaque() {
        b bVar = this.f27912a;
        return bVar != null ? bVar.j() : super.isOpaque();
    }

    @Override
    public void setCircularRevealOverlayDrawable(@Nullable Drawable drawable) {
        this.f27912a.k(drawable);
    }

    @Override
    public void setCircularRevealScrimColor(int i10) {
        this.f27912a.l(i10);
    }

    @Override
    public void setRevealInfo(@Nullable c.e eVar) {
        this.f27912a.m(eVar);
    }

    public CircularRevealFrameLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27912a = new b(this);
    }
}
